.class public Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$ParentDirNotFoundException;
.super Ljava/io/FileNotFoundException;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/common/file/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParentDirNotFoundException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
