import {prisma} from '@/app/utils/db'
import { promises as fs } from 'fs';
import { NextResponse } from 'next/server';
    
export  async function POST(){
    const file = await fs.readFile(process.cwd() + '/app/data.json', 'utf8');
    const data = JSON.parse(file);
    try{
        const createFounders = async (data: any) => {
            for (let e of data) {
                await prisma.founders.create({
                    data: {
                        companyName: e.company,
                        email: e.email,
                        ctoName: e.name
                    }
                });
            }
        };
        await createFounders(data);
        return new NextResponse("sent successfully")
    }catch(e){
        console.log(e)
        return new NextResponse("err woopies")
    }
}