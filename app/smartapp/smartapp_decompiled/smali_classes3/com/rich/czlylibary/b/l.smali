.class public final Lcom/rich/czlylibary/b/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/b/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rich/czlylibary/b/l;->a:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;Z)Lcom/rich/czlylibary/b/l$a;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/rich/czlylibary/b/l;->a([Ljava/lang/String;ZZ)Lcom/rich/czlylibary/b/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;ZZ)Lcom/rich/czlylibary/b/l$a;
    .locals 13

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_c

    array-length v3, p0

    if-nez v3, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    array-length v8, p0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, p0, v9

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v10, Lcom/rich/czlylibary/b/l;->a:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exit"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/rich/czlylibary/b/l;->a:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-eqz p2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v10, Lcom/rich/czlylibary/b/l;->a:Ljava/lang/String;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v10, Lcom/rich/czlylibary/b/l;->a:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v9, v1

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v9, v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v8, v1

    move-object v9, v8

    :goto_5
    move-object v12, p2

    move-object p2, p0

    move-object p0, v0

    move-object v0, v12

    goto :goto_9

    :catch_3
    move-exception p2

    move-object v0, v1

    move-object v8, v0

    move-object v9, v8

    move-object v12, p2

    move-object p2, p0

    move-object p0, v12

    goto :goto_9

    :cond_5
    move-object p0, v1

    move-object p2, p0

    move-object v8, p2

    move-object v9, v8

    :cond_6
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v7, v0, v6

    aput-object v8, v0, v5

    aput-object v9, v0, v3

    invoke-static {v0}, Lcom/rich/czlylibary/b/a;->a([Ljava/io/Closeable;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_a

    :catchall_1
    move-exception p0

    move-object v9, v1

    goto :goto_e

    :catch_4
    move-exception p0

    move-object p2, v1

    move-object v0, p2

    move-object v8, v0

    goto :goto_8

    :catchall_2
    move-exception p0

    move-object v7, v1

    goto :goto_6

    :catch_5
    move-exception p0

    move-object p2, v1

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object v7, p1

    :goto_6
    move-object v9, v7

    goto :goto_e

    :catch_6
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    :goto_7
    move-object v0, p2

    move-object v7, v0

    move-object v8, v7

    :goto_8
    move-object v9, v8

    :goto_9
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v7, p0, v6

    aput-object v8, p0, v5

    aput-object v9, p0, v3

    invoke-static {p0}, Lcom/rich/czlylibary/b/a;->a([Ljava/io/Closeable;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_7
    move-object p0, p2

    move-object p2, v0

    :cond_8
    :goto_a
    new-instance p1, Lcom/rich/czlylibary/b/l$a;

    if-nez p0, :cond_9

    move-object p0, v1

    goto :goto_b

    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b
    if-nez p2, :cond_a

    goto :goto_c

    :cond_a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-direct {p1, v2, p0, v1}, Lcom/rich/czlylibary/b/l$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_4
    move-exception p0

    :goto_d
    move-object v1, v8

    :goto_e
    new-array p2, v4, [Ljava/io/Closeable;

    aput-object v7, p2, v6

    aput-object v1, p2, v5

    aput-object v9, p2, v3

    invoke-static {p2}, Lcom/rich/czlylibary/b/a;->a([Ljava/io/Closeable;)V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw p0

    :cond_c
    :goto_f
    new-instance p0, Lcom/rich/czlylibary/b/l$a;

    invoke-direct {p0, v2, v1, v1}, Lcom/rich/czlylibary/b/l$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
