.class public Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker;
.super Ljava/lang/Object;
.source "ElfFileBuildIDChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;
    }
.end annotation


# static fields
.field public static ELF_NOTE_GNU:Ljava/lang/String; = "GNU"

.field public static NT_GNU_BUILD_ID:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkElfFileBuildID(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 52
    :try_start_0
    new-instance v2, Lcom/alibaba/mbg/unet/internal/ElfFile;

    invoke-direct {v2, p0}, Lcom/alibaba/mbg/unet/internal/ElfFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p0, ".note.gnu.build-id"

    .line 53
    invoke-virtual {v2, p0}, Lcom/alibaba/mbg/unet/internal/ElfFile;->getSectionHeaderByName(Ljava/lang/String;)Lcom/alibaba/mbg/unet/internal/ElfFile$SectionHeader;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    .line 82
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/mbg/unet/internal/ElfFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    .line 58
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/alibaba/mbg/unet/internal/ElfFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 59
    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/ElfFile$SectionHeader;->shOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v4, 0x80

    .line 60
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 62
    iget-object v5, v2, Lcom/alibaba/mbg/unet/internal/ElfFile;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    iget-wide v5, p0, Lcom/alibaba/mbg/unet/internal/ElfFile$SectionHeader;->shSize:J

    long-to-int p0, v5

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-string p0, "failed to read build-id section."

    .line 65
    invoke-static {v3, v4, p0}, Lcom/alibaba/mbg/unet/internal/ElfFile;->readUntilLimit(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 67
    new-instance p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;

    invoke-direct {p0, v4, v0}, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;-><init>(Ljava/nio/ByteBuffer;Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$1;)V

    .line 69
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->type:I

    sget v3, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker;->NT_GNU_BUILD_ID:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v0, v3, :cond_2

    .line 82
    :try_start_4
    invoke-virtual {v2}, Lcom/alibaba/mbg/unet/internal/ElfFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return v1

    .line 72
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->descdata:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->descdata:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/ElfFileBuildIDChecker$ElfInternalNote;->descdata:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    :try_start_6
    invoke-virtual {v2}, Lcom/alibaba/mbg/unet/internal/ElfFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return p0

    :cond_4
    :goto_0
    :try_start_7
    invoke-virtual {v2}, Lcom/alibaba/mbg/unet/internal/ElfFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_4
    nop

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Lcom/alibaba/mbg/unet/internal/ElfFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 87
    :catch_5
    :cond_5
    throw p0

    :catch_6
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_6

    .line 82
    :try_start_9
    invoke-virtual {v2}, Lcom/alibaba/mbg/unet/internal/ElfFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_6
    return v1
.end method
