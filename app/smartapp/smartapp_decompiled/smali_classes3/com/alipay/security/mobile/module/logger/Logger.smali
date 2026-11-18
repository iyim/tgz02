.class public Lcom/alipay/security/mobile/module/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final MAX_LOG_SIZE:I = 0xc800

.field private static logDirectory:Ljava/lang/String; = ""

.field private static logFileName:Ljava/lang/String; = ""

.field private static logTag:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 81
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alipay/security/mobile/module/logger/Logger;

    monitor-enter v0

    .line 23
    :try_start_0
    sput-object p0, Lcom/alipay/security/mobile/module/logger/Logger;->logDirectory:Ljava/lang/String;

    .line 24
    sput-object p1, Lcom/alipay/security/mobile/module/logger/Logger;->logFileName:Ljava/lang/String;

    .line 25
    sput-object p2, Lcom/alipay/security/mobile/module/logger/Logger;->logTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized logException(Ljava/lang/Throwable;)V
    .locals 2

    const-class v0, Lcom/alipay/security/mobile/module/logger/Logger;

    monitor-enter v0

    .line 35
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {p0}, Lcom/alipay/security/mobile/module/logger/Logger;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v1}, Lcom/alipay/security/mobile/module/logger/Logger;->logMessage(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized logMessage(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/alipay/security/mobile/module/logger/Logger;

    monitor-enter v0

    .line 29
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v1}, Lcom/alipay/security/mobile/module/logger/Logger;->logMessage(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized logMessage(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/security/mobile/module/logger/Logger;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/module/logger/Logger;->logFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/alipay/security/mobile/module/logger/Logger;->logTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    sget-object v2, Lcom/alipay/security/mobile/module/logger/Logger;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p0, "\n"

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    new-instance p0, Ljava/io/File;

    sget-object v2, Lcom/alipay/security/mobile/module/logger/Logger;->logDirectory:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_2
    new-instance p0, Ljava/io/File;

    sget-object v2, Lcom/alipay/security/mobile/module/logger/Logger;->logDirectory:Ljava/lang/String;

    sget-object v3, Lcom/alipay/security/mobile/module/logger/Logger;->logFileName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 63
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    const-wide/32 v2, 0xc800

    cmp-long v6, v4, v2

    if-gtz v6, :cond_4

    .line 65
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    goto :goto_1

    .line 68
    :cond_4
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 71
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 73
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catch_0
    monitor-exit v0

    return-void

    .line 42
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
