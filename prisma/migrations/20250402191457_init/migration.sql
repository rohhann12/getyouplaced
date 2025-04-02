-- CreateTable
CREATE TABLE "user" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "hits" INTEGER NOT NULL DEFAULT 2,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "founders" (
    "email" TEXT NOT NULL,
    "companyName" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "founders_email_key" ON "founders"("email");

-- CreateIndex
CREATE UNIQUE INDEX "founders_companyName_key" ON "founders"("companyName");
