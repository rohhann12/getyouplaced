/*
  Warnings:

  - A unique constraint covering the columns `[ctoName]` on the table `founders` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `ctoName` to the `founders` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "founders" ADD COLUMN     "ctoName" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "founders_ctoName_key" ON "founders"("ctoName");
