.class public Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# static fields
.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "t"

.field private static final KEY_TIMESTAMP2:Ljava/lang/String; = "t2"


# instance fields
.field private mCanRead:Z

.field private mCanWrite:Z

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFolderName:Ljava/lang/String;

.field private mIsLessMode:Z

.field private mIsSafety:Z

.field private mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 23
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 24
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 26
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 27
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 29
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 31
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 39
    iput-boolean p4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 40
    iput-boolean p5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 41
    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo p4, "t"

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 49
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v4, p4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 53
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto :goto_2

    :cond_1
    const-string v6, "mounted"

    .line 60
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 61
    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto :goto_2

    :cond_2
    const-string v6, "mounted_ro"

    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 65
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    goto :goto_2

    .line 67
    :cond_3
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 70
    :goto_2
    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    const-string/jumbo v6, "t2"

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v1, :cond_d

    :cond_4
    if-eqz p1, :cond_d

    .line 72
    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 73
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 74
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz p2, :cond_d

    .line 77
    :try_start_1
    invoke-virtual {p2, p3, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 79
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {p2, p4, v2, v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-nez p5, :cond_7

    cmp-long p2, v4, v7

    if-lez p2, :cond_5

    .line 83
    :try_start_2
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 84
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_4

    :cond_5
    cmp-long p2, v4, v7

    if-gez p2, :cond_6

    .line 89
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object p4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 90
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_4

    :cond_6
    cmp-long p1, v4, v7

    if-nez p1, :cond_e

    .line 93
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 94
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_4

    .line 99
    :cond_7
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p2, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 100
    :try_start_3
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {p2, v6, v2, v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    cmp-long p2, p4, v4

    if-gez p2, :cond_8

    cmp-long p2, p4, v2

    if-lez p2, :cond_8

    .line 103
    :try_start_4
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 104
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto :goto_3

    :cond_8
    cmp-long p2, p4, v4

    if-lez p2, :cond_9

    cmp-long p2, v4, v2

    if-lez p2, :cond_9

    .line 109
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 110
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto :goto_3

    :cond_9
    cmp-long p2, p4, v2

    if-nez p2, :cond_a

    cmp-long p2, v4, v2

    if-lez p2, :cond_a

    .line 113
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 114
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto :goto_3

    :cond_a
    cmp-long p1, v4, v2

    if-nez p1, :cond_b

    cmp-long p1, p4, v2

    if-lez p1, :cond_b

    .line 117
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 118
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto :goto_3

    :cond_b
    cmp-long p1, p4, v4

    if-nez p1, :cond_c

    .line 122
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 123
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_c
    :goto_3
    move-wide v7, v4

    :catch_2
    move-wide v4, p4

    goto :goto_4

    :catch_3
    nop

    goto :goto_4

    :catch_4
    :cond_d
    move-wide v7, v2

    :cond_e
    :goto_4
    cmp-long p1, v4, v7

    if-nez p1, :cond_f

    cmp-long p1, v4, v2

    if-nez p1, :cond_12

    cmp-long p1, v7, v2

    if-nez p1, :cond_12

    .line 136
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 137
    iget-boolean p3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz p3, :cond_10

    if-eqz p3, :cond_12

    cmp-long p3, v4, v2

    if-nez p3, :cond_12

    cmp-long p3, v7, v2

    if-nez p3, :cond_12

    .line 139
    :cond_10
    iget-object p3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_11

    .line 140
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 141
    invoke-interface {p3, v6, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    :cond_11
    :try_start_5
    iget-object p3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz p3, :cond_12

    .line 146
    iget-object p3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object p3

    .line 147
    invoke-interface {p3, v6, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 148
    invoke-interface {p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_12
    return-void
.end method

.method private checkSDCardXMLFile()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->checkFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 213
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 215
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 217
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 221
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 222
    nop

    nop

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 223
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 224
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 225
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 226
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 227
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 228
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 229
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 230
    nop

    nop

    .line 231
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 230
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 234
    :cond_5
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    return-void
.end method

.method private copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
    .locals 4

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 181
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 183
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 184
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 185
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 189
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 190
    nop

    nop

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 191
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 192
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 193
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 194
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 195
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 196
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 197
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 198
    nop

    nop

    .line 199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 198
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 203
    :cond_5
    :try_start_0
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method private getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "%s%s%s"

    .line 169
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    .locals 1

    .line 158
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getRootFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 161
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initEditor()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 363
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 365
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "t"

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 367
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v2, :cond_1

    .line 370
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 371
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 6

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 379
    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "t"

    .line 381
    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 390
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    :cond_2
    const/4 v1, 0x0

    .line 396
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 398
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "mounted"

    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 402
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-nez v4, :cond_4

    .line 403
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 404
    invoke-direct {p0, v4}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 406
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 408
    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v4, :cond_3

    .line 409
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    goto :goto_2

    .line 411
    :cond_3
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 413
    :goto_2
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v4}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_3

    .line 417
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v4, :cond_5

    .line 418
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v4}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_5

    :catch_1
    const/4 v0, 0x0

    .line 427
    :cond_5
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mounted_ro"

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_7

    .line 432
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v1, :cond_7

    .line 433
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_7
    return v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 499
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 500
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 503
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 489
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 490
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 493
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    .line 479
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 480
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 483
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 459
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 460
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    .line 469
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 470
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0, p1, v1, v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 445
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 446
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 453
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 285
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 287
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 297
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 299
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 261
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 263
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 267
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    .line 273
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 275
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 309
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 311
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public reload()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 335
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    :cond_0
    const/4 v0, 0x0

    .line 341
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 343
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mounted"

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mounted_ro"

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_2

    .line 351
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 321
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 323
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method
