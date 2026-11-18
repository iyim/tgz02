.class public Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;
.super Ljava/lang/Object;
.source "ElfFileBuildIDChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElfInternalNote"
.end annotation


# instance fields
.field descdata:Ljava/lang/String;

.field descsz:I

.field namedata:Ljava/lang/String;

.field namesz:I

.field type:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->namesz:I

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->descsz:I

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->type:I

    .line 31
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->namesz:I

    new-array v0, v0, [B

    .line 32
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/ElfFile;->readCString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->namedata:Ljava/lang/String;

    .line 34
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->descsz:I

    new-array v0, v0, [B

    .line 35
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/ElfFile;->hexByteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->descdata:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;-><init>(Ljava/nio/ByteBuffer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
