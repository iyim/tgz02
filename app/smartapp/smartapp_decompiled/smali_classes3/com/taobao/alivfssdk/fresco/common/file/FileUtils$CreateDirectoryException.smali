.class public Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$CreateDirectoryException;
.super Ljava/io/IOException;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/common/file/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateDirectoryException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$CreateDirectoryException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
