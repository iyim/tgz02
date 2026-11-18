.class public Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;
.super Ljava/lang/Object;
.source "ShellUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static execute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;->execute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;->execute([Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    new-instance p0, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;

    const-string p1, "cmd is null!"

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static execute(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;->execute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;->execute(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 51
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;->execute([Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_1
    new-instance p0, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;

    const-string p1, "cmd is null!"

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static execute(Ljava/util/List;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;->execute(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static execute([Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string p2, "su"

    goto :goto_0

    :cond_0
    const-string p2, "sh"

    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "/"

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p1

    goto :goto_1

    .line 77
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 79
    :goto_1
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 80
    :try_start_1
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const-string p0, "exit\n"

    .line 83
    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 87
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 88
    :try_start_2
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x400

    .line 89
    :try_start_3
    new-array v1, v1, [C

    .line 91
    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 92
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 94
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    .line 99
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    .line 100
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, p2

    move-object p2, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v7, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v7

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    move-object v8, v1

    move-object v1, p2

    move-object p2, v8

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p1, v1

    goto :goto_6

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object v1, p2

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, v1

    :goto_4
    move-object p2, p1

    .line 96
    :goto_5
    :try_start_4
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p0

    move-object v7, v1

    move-object v1, p1

    move-object p1, p2

    move-object p2, v7

    .line 98
    :goto_6
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    .line 99
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    .line 100
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/IOUtil;->safelyClose(Ljava/io/Closeable;)V

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method

.method public static execute([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil$ShellException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/utils/misc/ShellUtil;->execute([Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
