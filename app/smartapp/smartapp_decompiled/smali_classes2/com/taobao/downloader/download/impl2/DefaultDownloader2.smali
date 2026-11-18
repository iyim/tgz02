.class public Lcom/taobao/downloader/download/impl2/DefaultDownloader2;
.super Ljava/lang/Object;
.source "DefaultDownloader2.java"

# interfaces
.implements Lcom/taobao/downloader/download/IDownloader;


# static fields
.field public static final ST_CANCELED:I = 0x2

.field public static final ST_PAUSED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Downloader"


# instance fields
.field private inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

.field private mStatus:I

.field private outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private doNetworkDownload()Z
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "on exception"

    const-string v3, "Downloader"

    const/4 v4, 0x0

    .line 125
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->getConnection()Lcom/taobao/downloader/download/protocol/DLConnection;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 127
    :try_start_1
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-wide v8, v0, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->connectTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->connectTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    if-nez v7, :cond_1

    if-eqz v7, :cond_0

    .line 197
    :try_start_2
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 199
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v6, 0x1

    .line 135
    :try_start_3
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->getInputStream()Lcom/taobao/downloader/download/protocol/DLInputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_16

    const/16 v9, -0xb

    .line 147
    :try_start_4
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {v0}, Lcom/taobao/downloader/download/impl2/InputContext;->getRandomAccessFile()Ljava/io/RandomAccessFile;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_12

    .line 157
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 158
    invoke-direct {v1, v8, v4}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->saveData(Lcom/taobao/downloader/download/protocol/DLInputStream;Ljava/io/RandomAccessFile;)Z

    move-result v0

    .line 159
    iget-object v12, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v12, v12, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-wide v13, v12, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->downloadTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v10

    add-long/2addr v13, v15

    iput-wide v13, v12, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->downloadTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_5

    if-eqz v4, :cond_2

    .line 183
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 185
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 190
    :try_start_7
    invoke-interface {v8}, Lcom/taobao/downloader/download/protocol/DLInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 192
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 197
    :try_start_8
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 199
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v5

    .line 165
    :cond_5
    :try_start_9
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {v0}, Lcom/taobao/downloader/download/impl2/InputContext;->hitTmpCache()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 166
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    iget-object v10, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v10, v10, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-static {v0, v10}, Lcom/taobao/downloader/util/FileUtil;->mvFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    const/16 v5, 0xa

    iput v5, v0, Lcom/taobao/downloader/download/impl2/OutputContext;->successCode:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_6

    .line 183
    :try_start_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 185
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    if-eqz v8, :cond_7

    .line 190
    :try_start_b
    invoke-interface {v8}, Lcom/taobao/downloader/download/protocol/DLInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v4, v0

    .line 192
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 197
    :try_start_c
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v4, v0

    .line 199
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    return v6

    .line 170
    :cond_9
    :try_start_d
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget-object v10, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v10, v10, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x68

    goto :goto_7

    :cond_a
    const/16 v10, 0x69

    :goto_7
    const-string v11, "rename tmp file error"

    invoke-virtual {v0, v9, v10, v11}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object v0

    iput-boolean v6, v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->ioError:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v4, :cond_b

    .line 183
    :try_start_e
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v4, v0

    .line 185
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    if-eqz v8, :cond_c

    .line 190
    :try_start_f
    invoke-interface {v8}, Lcom/taobao/downloader/download/protocol/DLInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v4, v0

    .line 192
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_9
    if-eqz v7, :cond_d

    .line 197
    :try_start_10
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v4, v0

    .line 199
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_a
    return v5

    .line 176
    :cond_e
    :try_start_11
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    iget-object v6, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {v6}, Lcom/taobao/downloader/download/impl2/InputContext;->getFileErrorCode()I

    move-result v6

    const/16 v9, 0x6a

    const-string v10, "download invalid"

    invoke-virtual {v0, v6, v9, v10}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_f

    .line 183
    :try_start_12
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v4, v0

    .line 185
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_b
    if-eqz v8, :cond_10

    .line 190
    :try_start_13
    invoke-interface {v8}, Lcom/taobao/downloader/download/protocol/DLInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v4, v0

    .line 192
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_c
    if-eqz v7, :cond_11

    .line 197
    :try_start_14
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    move-object v4, v0

    .line 199
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_d
    return v5

    .line 149
    :cond_12
    :try_start_15
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v10, "outputStream is null"

    invoke-direct {v0, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :catch_d
    move-exception v0

    :try_start_16
    const-string v10, "getRandomAccessFile"

    .line 152
    invoke-static {v3, v10, v0}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v10, 0x67

    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object v0

    iput-boolean v6, v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->ioError:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v4, :cond_13

    .line 183
    :try_start_17
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v4, v0

    .line 185
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_e
    if-eqz v8, :cond_14

    .line 190
    :try_start_18
    invoke-interface {v8}, Lcom/taobao/downloader/download/protocol/DLInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    move-object v4, v0

    .line 192
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_f
    if-eqz v7, :cond_15

    .line 197
    :try_start_19
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    move-object v4, v0

    .line 199
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_10
    return v5

    .line 137
    :cond_16
    :try_start_1a
    new-instance v0, Ljava/io/IOException;

    const-string v9, "inputstream is null"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto :goto_15

    :catch_11
    move-exception v0

    goto :goto_11

    :catch_12
    move-exception v0

    move-object v8, v4

    :goto_11
    :try_start_1b
    const-string v9, "conn.getinputstream exception"

    .line 140
    invoke-static {v3, v9, v0}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    iget-object v0, v1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v9, -0xc

    const/16 v10, 0xcd

    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object v0

    iput-boolean v6, v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->connectError:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v8, :cond_17

    .line 190
    :try_start_1c
    invoke-interface {v8}, Lcom/taobao/downloader/download/protocol/DLInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_13

    goto :goto_12

    :catch_13
    move-exception v0

    move-object v4, v0

    .line 192
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_12
    if-eqz v7, :cond_18

    .line 197
    :try_start_1d
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_14

    goto :goto_13

    :catch_14
    move-exception v0

    move-object v4, v0

    .line 199
    invoke-static {v3, v2, v4}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_13
    return v5

    :catchall_1
    move-exception v0

    move-object v8, v4

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v7, v4

    move-object v8, v7

    :goto_14
    move-object v4, v0

    move-object v0, v8

    :goto_15
    if-eqz v0, :cond_19

    .line 183
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    move-object v5, v0

    .line 185
    invoke-static {v3, v2, v5}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_16
    if-eqz v8, :cond_1a

    .line 190
    :try_start_1f
    invoke-interface {v8}, Lcom/taobao/downloader/download/protocol/DLInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_16

    goto :goto_17

    :catch_16
    move-exception v0

    move-object v5, v0

    .line 192
    invoke-static {v3, v2, v5}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_17
    if-eqz v7, :cond_1b

    .line 197
    :try_start_20
    invoke-interface {v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->disConnect()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_17

    goto :goto_18

    :catch_17
    move-exception v0

    move-object v5, v0

    .line 199
    invoke-static {v3, v2, v5}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_1b
    :goto_18
    throw v4
.end method

.method private getConnection()Lcom/taobao/downloader/download/protocol/DLConnection;
    .locals 11

    .line 208
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v1, v1, Lcom/taobao/downloader/download/impl2/InputContext;->mConfig:Lcom/taobao/downloader/download/protocol/DLConfig;

    invoke-static {v0, v1}, Lcom/taobao/downloader/util/Switcher;->getConnection(Lcom/taobao/downloader/request/Item;Lcom/taobao/downloader/download/protocol/DLConfig;)Lcom/taobao/downloader/download/protocol/DLConnection;

    move-result-object v0

    const/4 v1, 0x2

    .line 209
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v2, v2, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v2, v2, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v2, v2, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Downloader"

    const-string v5, "use connction {}"

    invoke-static {v2, v5, v1}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v5, -0xc

    .line 212
    :try_start_0
    iget-object v6, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v6, v6, Lcom/taobao/downloader/download/impl2/InputContext;->url:Ljava/net/URL;

    iget-object v7, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v7, v7, Lcom/taobao/downloader/download/impl2/InputContext;->mConfig:Lcom/taobao/downloader/download/protocol/DLConfig;

    invoke-interface {v0, v6, v7}, Lcom/taobao/downloader/download/protocol/DLConnection;->openConnection(Ljava/net/URL;Lcom/taobao/downloader/download/protocol/DLConfig;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v7, v7, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v7, v7, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-object v7, v7, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "f-refer"

    invoke-interface {v0, v7, v6}, Lcom/taobao/downloader/download/protocol/DLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {v6}, Lcom/taobao/downloader/download/impl2/InputContext;->getPreviousFileSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v8, v6

    if-eqz v10, :cond_0

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 225
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const-string v3, "add request property range {}"

    invoke-static {v2, v3, v7}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "Range"

    .line 226
    invoke-interface {v0, v3, v6}, Lcom/taobao/downloader/download/protocol/DLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v3, v3, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iput-boolean v4, v3, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->range:Z

    goto :goto_0

    .line 229
    :cond_0
    iget-object v6, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v6, v6, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iput-boolean v3, v6, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->range:Z

    .line 233
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lcom/taobao/downloader/download/protocol/DLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :try_start_2
    invoke-interface {v0}, Lcom/taobao/downloader/download/protocol/DLConnection;->getStatusCode()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-interface {v0}, Lcom/taobao/downloader/download/protocol/DLConnection;->getDownloadLength()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v2}, Lcom/taobao/downloader/download/impl2/InputContext;->isHttpStatusCodeOk(JI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v3, v3, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    invoke-interface {v0}, Lcom/taobao/downloader/download/protocol/DLConnection;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v2, v0}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object v0

    iput-boolean v4, v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->connectError:Z

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v3

    const-string v6, "conn.getstatuscode exception"

    .line 244
    invoke-static {v2, v6, v3}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v2, v2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v3, 0xcc

    invoke-interface {v0}, Lcom/taobao/downloader/download/protocol/DLConnection;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v3, v0}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object v0

    iput-boolean v4, v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->connectError:Z

    return-object v1

    :catch_1
    move-exception v3

    const-string v6, "conn.conn exception"

    .line 235
    invoke-static {v2, v6, v3}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v2, v2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v3, 0xcb

    invoke-interface {v0}, Lcom/taobao/downloader/download/protocol/DLConnection;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v3, v0}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object v0

    iput-boolean v4, v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->connectError:Z

    return-object v1

    :catch_2
    move-exception v3

    const-string v6, "conn.open exception"

    .line 214
    invoke-static {v2, v6, v3}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v2, v2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v3, 0xca

    invoke-interface {v0}, Lcom/taobao/downloader/download/protocol/DLConnection;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v3, v0}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object v0

    iput-boolean v4, v0, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->connectError:Z

    return-object v1
.end method

.method private getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 321
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStatus()I
    .locals 3

    .line 333
    iget v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->mStatus:I

    if-lez v0, :cond_2

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 339
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private saveData(Lcom/taobao/downloader/download/protocol/DLInputStream;Ljava/io/RandomAccessFile;)Z
    .locals 11

    const-string v0, "Downloader"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v4, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v4, v4, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/taobao/downloader/download/impl2/OutputContext;->mDownloadSize:J

    .line 267
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/16 v4, -0xb

    .line 269
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 276
    invoke-static {}, Lcom/taobao/downloader/util/Switcher;->getDLReadBufferSize()I

    move-result p2

    new-array p2, p2, [B

    .line 280
    :goto_0
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->getStatus()I

    move-result v5

    if-lez v5, :cond_1

    .line 282
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p1, p1, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 p2, -0x14

    const-string v0, ""

    invoke-virtual {p1, p2, v5, v0}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    return v2

    .line 288
    :cond_1
    :try_start_1
    invoke-interface {p1, p2}, Lcom/taobao/downloader/download/protocol/DLInputStream;->read([B)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, -0x1

    if-ne v6, v5, :cond_2

    return v1

    .line 297
    :cond_2
    iget-object v6, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iput-boolean v1, v6, Lcom/taobao/downloader/download/impl2/OutputContext;->hasReadData:Z

    .line 302
    :try_start_2
    invoke-static {p2, v2, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    iget-object v6, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-wide v7, v6, Lcom/taobao/downloader/download/impl2/OutputContext;->mDownloadSize:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/taobao/downloader/download/impl2/OutputContext;->mDownloadSize:J

    .line 311
    iget-object v5, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v5, v5, Lcom/taobao/downloader/download/impl2/OutputContext;->downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

    iget-wide v6, v5, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->traffic:J

    add-long/2addr v6, v9

    iput-wide v6, v5, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->traffic:J

    .line 312
    iget-object v5, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    invoke-virtual {v5}, Lcom/taobao/downloader/download/impl2/OutputContext;->updateProgress()V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "fc.write exception"

    .line 304
    invoke-static {v0, p2, p1}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    iget-object p2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p2, p2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v0, 0x66

    invoke-direct {p0, p1}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, v0, p1}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object p1

    iput-boolean v1, p1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->ioError:Z

    return v2

    :catch_1
    move-exception p1

    const-string p2, "input.read exception"

    .line 290
    invoke-static {v0, p2, p1}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    iget-object p2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p2, p2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v0, -0xc

    const/16 v3, 0xc9

    invoke-direct {p0, p1}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v3, p1}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object p1

    iput-boolean v1, p1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->readStreamError:Z

    return v2

    :catch_2
    move-exception p1

    const-string p2, "fc.position exception"

    .line 271
    invoke-static {v0, p2, p1}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    iget-object p2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p2, p2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v0, 0x65

    invoke-direct {p0, p1}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, v0, p1}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object p1

    iput-boolean v1, p1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->ioError:Z

    return v2

    .line 260
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v0, v0, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v3, -0x13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savedataParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v2, p1}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    return v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 56
    iget v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->mStatus:I

    return-void
.end method

.method public download(Lcom/taobao/downloader/request/task/SingleTask;Lcom/taobao/downloader/download/IListener;)V
    .locals 5

    const-string v0, "Downloader"

    .line 66
    new-instance v1, Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-direct {v1, p1}, Lcom/taobao/downloader/download/impl2/InputContext;-><init>(Lcom/taobao/downloader/request/task/SingleTask;)V

    iput-object v1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    .line 67
    new-instance v1, Lcom/taobao/downloader/download/impl2/OutputContext;

    invoke-direct {v1, p2}, Lcom/taobao/downloader/download/impl2/OutputContext;-><init>(Lcom/taobao/downloader/download/IListener;)V

    iput-object v1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->getStatus()I

    move-result p2

    if-lez p2, :cond_0

    .line 73
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p1, p1, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v1, -0x14

    const-string v2, ""

    invoke-virtual {p1, v1, p2, v2}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {p1, p2}, Lcom/taobao/downloader/download/impl2/OutputContext;->callback(Lcom/taobao/downloader/download/impl2/InputContext;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {v1}, Lcom/taobao/downloader/download/impl2/InputContext;->prepareDownload()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {p1}, Lcom/taobao/downloader/download/impl2/InputContext;->hitFileCache()Z

    move-result p1

    const/16 v1, 0xb

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iput v1, p1, Lcom/taobao/downloader/download/impl2/OutputContext;->successCode:I

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {p1}, Lcom/taobao/downloader/download/impl2/InputContext;->hitTmpCache()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 94
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object p1, p1, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v2, v2, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-static {p1, v2}, Lcom/taobao/downloader/util/FileUtil;->mvFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iput v1, p1, Lcom/taobao/downloader/download/impl2/OutputContext;->successCode:I

    goto :goto_0

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p1, p1, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v1, -0xb

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    iget-object v2, v2, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x68

    goto :goto_1

    :cond_3
    const/16 v2, 0x69

    :goto_1
    const-string v3, "rename tmp file error"

    invoke-virtual {p1, v1, v2, v3}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object p1

    iput-boolean p2, p1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->ioError:Z

    goto :goto_0

    .line 104
    :cond_4
    invoke-direct {p0}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->doNetworkDownload()Z

    goto :goto_2

    :catch_0
    move-exception v1

    .line 81
    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v2, v2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v3, -0xa

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object p1, p1, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p1}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    move-result-object p1

    iput-boolean p2, p1, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->urlError:Z

    const-string p1, "prepare download exception"

    .line 82
    invoke-static {v0, p1, v1}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_3
    const-string p2, "do download exception"

    .line 107
    invoke-static {v0, p2, p1}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object p2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p2, p2, Lcom/taobao/downloader/download/impl2/OutputContext;->errorInfo:Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;

    const/16 v0, -0x13

    const/16 v1, 0x12d

    invoke-direct {p0, p1}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;->addErrorInfo(IILjava/lang/String;)Lcom/taobao/downloader/download/impl2/OutputContext$ErrorInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :goto_2
    iget-object p1, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object p2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {p1, p2}, Lcom/taobao/downloader/download/impl2/OutputContext;->callback(Lcom/taobao/downloader/download/impl2/InputContext;)V

    return-void

    :goto_3
    iget-object p2, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->outputContext:Lcom/taobao/downloader/download/impl2/OutputContext;

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->inputContext:Lcom/taobao/downloader/download/impl2/InputContext;

    invoke-virtual {p2, v0}, Lcom/taobao/downloader/download/impl2/OutputContext;->callback(Lcom/taobao/downloader/download/impl2/InputContext;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public pause()V
    .locals 1

    .line 60
    iget v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->mStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;->mStatus:I

    return-void
.end method
