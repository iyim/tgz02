.class public Lcom/taobao/alivfssdk/fresco/common/file/FileTree;
.super Ljava/lang/Object;
.source "FileTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .locals 4

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 64
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 65
    invoke-static {v3}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->deleteRecursively(Ljava/io/File;)Z

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->deleteContents(Ljava/io/File;)Z

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static walkFileTree(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static walkFileTree(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;I)V
    .locals 5

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-interface {p1, p0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;->preVisitDirectory(Ljava/io/File;)V

    .line 43
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, p2, 0x1

    .line 47
    invoke-static {v3, p1, v4}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;I)V

    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {p1, v3}, Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;->visitFile(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {p1, p0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;->postVisitDirectory(Ljava/io/File;)V

    return-void
.end method
