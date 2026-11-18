.class public final Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;,
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;,
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteFloatUtils;,
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;,
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteLongUtils;,
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;,
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;,
        Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$SUPPORTED_TYPE;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CONTENT_LENGTH_LOST:I = 0x1

.field private static final CONTENT_OVER_SIZE:I = 0x7

.field private static final DATA_TYPE_ERROR:I = 0x8

.field private static final DATA_TYPE_INVALID:I = 0x9

.field private static final DELAY_TIME_TO_SAVE:J = 0x3e8L

.field private static final FINISH_MARK:B = 0x12t

.field private static final FINISH_MARK_LENGTH:I = 0x1

.field private static final ID_LENGTH:I = 0x4

.field private static final INIT_EXCEPTION:I = 0xa

.field private static final LOAD_BAK_FILE:I = 0xc

.field private static final MAPPED_BUFFER_ERROR:I = 0x4

.field private static final MAX_LOCK_FILE_TIME:J = 0x2710L

.field private static final MAX_NUM:I = 0x7fffffff

.field private static final MAX_TRY_TIME:I = 0x6

.field private static final MIN_INCREASE_LENGTH:I = 0x400

.field private static final MODIFY_ID_LOST:I = 0x2

.field private static final OTHER_EXCEPTION:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesNew"

.field private static final TRY_RELOAD_INTERVAL:J = 0x3cL

.field private static final TRY_SAVE_TIME_DELAY:I = 0x7d0

.field private static final TYPE_CAST_EXCEPTION:I = 0xd

.field private static final VALUE_LOST:I = 0x3

.field private static final mSaveMessageID:I = 0x533e

.field private static final mSpecialKey:Ljava/lang/String; = "@sp_sp_key@"

.field private static final mSpecialValue:Ljava/lang/String; = "@_@"


# instance fields
.field private mBackupFilePath:Ljava/lang/String;

.field private mCurTryTime:I

.field private mEditorList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

.field private mFile:Ljava/io/File;

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mFileMonitor:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

.field private mHandler:Landroid/os/Handler;

.field private mIsSaving:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private final mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

.field private mModifyErrorCnt:I

.field private mModifyID:I

.field private mSaveRunnable:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

.field private final mSyncObj:Ljava/lang/Object;

.field private final mSyncSaveObj:Ljava/lang/Object;

.field private mThread:Landroid/os/HandlerThread;

.field private final mTryReloadRunnable:Ljava/lang/Runnable;

.field private mTryReloadStartTime:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    .line 52
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    .line 53
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncSaveObj:Ljava/lang/Object;

    .line 84
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    const/4 p2, 0x0

    .line 88
    iput-boolean p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    .line 407
    new-instance p2, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$2;

    invoke-direct {p2, p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$2;-><init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    .line 489
    new-instance p2, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$4;

    invoke-direct {p2, p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$4;-><init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

    .line 99
    iput-object p3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    .line 100
    new-instance p2, Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mThread:Landroid/os/HandlerThread;

    .line 101
    iget-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->initBuffer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->startLoadFromDisk()V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;

    invoke-direct {p2, p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$1;-><init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;)Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->save(Landroid/content/SharedPreferences$Editor;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->loadFromDiskLocked()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->tryReload()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private allocBuffer(I)Ljava/nio/MappedByteBuffer;
    .locals 7

    .line 767
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 772
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 774
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 777
    :goto_1
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz p1, :cond_1

    .line 778
    invoke-virtual {p1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 781
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    return-object p1
.end method

.method private awaitLoadedLocked()V
    .locals 1

    .line 738
    monitor-enter p0

    .line 739
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 741
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 743
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 746
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->tryReload()V

    return-void

    :catchall_0
    move-exception v0

    .line 746
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private backup()V
    .locals 10

    const/4 v0, 0x0

    .line 1193
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1195
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1197
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1198
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1199
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    int-to-long v6, v1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1204
    invoke-direct {p0, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 1201
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1203
    invoke-direct {p0, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1204
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception v1

    .line 1203
    :goto_2
    invoke-direct {p0, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1204
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    throw v1
.end method

.method private getBCCCode([B)B
    .locals 4

    .line 1270
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getBytes(Ljava/lang/Object;)[B
    .locals 3

    if-eqz p1, :cond_5

    .line 1139
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1140
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 1141
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1142
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    .line 1143
    new-array v1, v0, [B

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-byte p1, v0

    aput-byte p1, v1, v2

    return-object v1

    .line 1144
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 1145
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteFloatUtils;->floatToBytes(F)[B

    move-result-object p1

    return-object p1

    .line 1146
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1147
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object p1

    return-object p1

    .line 1148
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 1149
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteLongUtils;->longToBytes(J)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private getContentLength()I
    .locals 7

    .line 588
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    goto :goto_3

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x4

    .line 594
    new-array v3, v2, [B

    .line 595
    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v4, v3}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 596
    invoke-static {v3}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v4

    .line 597
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 598
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->get()B

    move-result v2

    const/16 v5, 0x12

    if-eq v2, v5, :cond_1

    .line 599
    invoke-direct {p0, v3}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    if-gez v4, :cond_6

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_5

    .line 601
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    :goto_1
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 604
    :cond_5
    monitor-exit v0

    return v1

    :cond_6
    const v1, 0x7fffffff

    if-le v4, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v4

    .line 611
    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 612
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    :goto_3
    return v1
.end method

.method private getDataBytes()Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[[B>;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [[B

    .line 528
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 530
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 531
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 537
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 539
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v8, :cond_0

    .line 540
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    if-eqz v7, :cond_0

    .line 542
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 543
    array-length v9, v8

    invoke-static {v9}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v9

    .line 544
    aput-object v9, v1, v6

    add-int/lit8 v10, v6, 0x1

    .line 545
    aput-object v8, v1, v10

    .line 546
    array-length v9, v9

    array-length v8, v8

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 549
    invoke-direct {p0, v7}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getBytes(Ljava/lang/Object;)[B

    move-result-object v8

    .line 550
    array-length v9, v8

    invoke-static {v9}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v9

    add-int/lit8 v10, v6, 0x2

    .line 552
    aput-object v9, v1, v10

    add-int/lit8 v10, v6, 0x3

    .line 553
    aput-object v8, v1, v10

    .line 554
    array-length v9, v9

    array-length v8, v8

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 557
    new-array v8, v3, [B

    .line 558
    invoke-direct {p0, v7}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getObjectType(Ljava/lang/Object;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v8, v4

    add-int/lit8 v7, v6, 0x4

    .line 559
    aput-object v8, v1, v7

    .line 560
    array-length v7, v8

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x5

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 565
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 531
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private getMaskByte([B)B
    .locals 0

    .line 1277
    invoke-direct {p0, p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getBCCCode([B)B

    move-result p1

    return p1
.end method

.method private getObjectByType([BI)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_5

    .line 1115
    array-length v0, p1

    if-lez v0, :cond_5

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1118
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 1120
    aget-byte p1, p1, p2

    if-ne p1, v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1122
    invoke-static {p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteFloatUtils;->bytesToFloat([B)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 1124
    invoke-static {p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 1126
    invoke-static {p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteLongUtils;->bytesToLong([B)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private getObjectType(Ljava/lang/Object;)I
    .locals 1

    .line 1099
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x5

    return p1

    .line 1101
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    return p1

    .line 1103
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 1105
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 1107
    :cond_3
    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getOneString([BI)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 985
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 986
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 990
    aget-byte v0, p1, p2

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    aget-byte v0, p1, p2

    invoke-direct {p0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v4

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "length string\'s finish mark missing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 996
    invoke-static {v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v0

    if-ltz v0, :cond_5

    add-int v1, p2, v0

    .line 997
    array-length v4, p1

    if-ge v1, v4, :cond_5

    const v4, 0x7fffffff

    if-gt v0, v4, :cond_5

    const/4 v4, 0x0

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1005
    :cond_2
    new-array v4, v0, [B

    .line 1006
    invoke-static {p1, p2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1009
    aget-byte p2, p1, v1

    if-eq p2, v3, :cond_4

    aget-byte p1, p1, v1

    invoke-direct {p0, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 1010
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Stored bytes\' finish mark missing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    add-int/lit8 p2, v1, 0x1

    .line 1015
    :goto_2
    new-instance p1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 998
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "length string is invalid"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private increaseModifyID()I
    .locals 2

    .line 583
    iget v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    .line 584
    iget v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    return v0
.end method

.method private initBuffer()Z
    .locals 8

    .line 790
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const/16 v0, 0xa

    .line 792
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 793
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 794
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 796
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0

    .line 801
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 805
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_1
    const/4 v2, 0x0

    .line 810
    :cond_2
    :goto_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    const-string/jumbo v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 812
    invoke-direct {p0, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;

    if-nez v2, :cond_4

    .line 814
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->initFileHeader()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 818
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 820
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_3

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-interface {v3, v2, v0, v4, v5}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method private initFileHeader()V
    .locals 5

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 1085
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1086
    invoke-static {v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x4

    .line 1087
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v0, v3

    .line 1089
    invoke-static {v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    const/4 v4, 0x5

    .line 1090
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x9

    .line 1091
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v0, v3

    .line 1093
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1094
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private load(Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 634
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->lockFile(Z)Ljava/nio/channels/FileLock;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_b

    .line 679
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    goto/16 :goto_6

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 638
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->reallocBuffer()V

    .line 640
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_7

    .line 644
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getContentLength()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v3, v3

    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    if-gtz v7, :cond_7

    .line 660
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz p1, :cond_4

    .line 665
    iget p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_5

    .line 666
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_5
    if-eqz v2, :cond_6

    .line 671
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void

    .line 649
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getModifyID()I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    .line 650
    iget v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-lez v5, :cond_8

    .line 651
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 652
    :try_start_4
    iget-object v6, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int v4, v3

    sub-int/2addr v4, v7

    .line 653
    new-array v0, v4, [B

    .line 654
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 655
    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 660
    :cond_8
    :goto_4
    :try_start_6
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .line 662
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz p1, :cond_9

    if-nez v0, :cond_a

    .line 665
    iget p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_a

    .line 666
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_a
    if-eqz v2, :cond_b

    .line 671
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_6
    return-void

    .line 660
    :cond_c
    :goto_7
    :try_start_8
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    if-eqz p1, :cond_d

    .line 665
    iget p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_e

    .line 666
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_e
    if-eqz v2, :cond_f

    .line 671
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_9
    return-void

    :catchall_1
    move-exception v3

    .line 660
    :try_start_a
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_a

    :catch_6
    move-exception v1

    .line 662
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    if-eqz p1, :cond_10

    if-nez v0, :cond_11

    .line 665
    iget p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_11

    .line 666
    :cond_10
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_11
    if-eqz v2, :cond_12

    .line 671
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    :cond_12
    :goto_b
    throw v3
.end method

.method private loadFromBakFile()Z
    .locals 15

    const-string v0, ""

    const-string v1, "#"

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1224
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    const-string/jumbo v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x4

    .line 1225
    :try_start_1
    new-array v7, v7, [B

    .line 1226
    array-length v8, v7

    invoke-virtual {v6, v7, v4, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1227
    invoke-static {v7}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v8, 0xa

    if-gt v7, v8, :cond_0

    .line 1245
    invoke-direct {p0, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1248
    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v4

    :cond_0
    const v9, 0x7fffffff

    if-le v7, v9, :cond_1

    const v7, 0x7fffffff

    :cond_1
    int-to-long v9, v7

    .line 1234
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-lez v13, :cond_2

    .line 1235
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v7, v9

    :cond_2
    sub-int/2addr v7, v8

    .line 1238
    new-array v7, v7, [B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v8, 0xa

    .line 1239
    :try_start_4
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1240
    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1245
    invoke-direct {p0, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1248
    :try_start_5
    invoke-direct {p0, v7, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1250
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1254
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_4

    .line 1255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, v7

    int-to-long v6, v1

    invoke-interface {v3, v0, v2, v6, v7}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v7

    move-object v8, v3

    goto :goto_6

    :catch_3
    move-exception v7

    move-object v14, v7

    move-object v7, v3

    move-object v3, v14

    goto :goto_2

    :catchall_1
    move-exception v7

    move-object v6, v3

    move-object v8, v6

    goto :goto_6

    :catch_4
    move-exception v6

    move-object v7, v3

    move-object v3, v6

    move-object v6, v7

    .line 1243
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1245
    invoke-direct {p0, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1248
    :try_start_7
    invoke-direct {p0, v7, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .line 1250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1254
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v0, :cond_4

    .line 1255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    array-length v4, v7

    :goto_4
    int-to-long v3, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_4
    :goto_5
    return v5

    :catchall_2
    move-exception v8

    move-object v14, v8

    move-object v8, v3

    move-object v3, v7

    move-object v7, v14

    .line 1245
    :goto_6
    invoke-direct {p0, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1248
    :try_start_8
    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v6

    .line 1250
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-nez v3, :cond_5

    if-eqz v8, :cond_8

    .line 1254
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v6, :cond_8

    .line 1255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_7

    goto :goto_9

    :cond_7
    array-length v4, v3

    :goto_9
    int-to-long v3, v4

    invoke-interface {v6, v0, v2, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_8
    throw v7
.end method

.method private loadFromDiskLocked()V
    .locals 1

    .line 727
    iget-boolean v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 731
    invoke-direct {p0, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->load(Z)V

    const/4 v0, 0x1

    .line 733
    iput-boolean v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    .line 734
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private lockFile(Z)Ljava/nio/channels/FileLock;
    .locals 8

    .line 830
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    .line 836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_1
    if-nez v1, :cond_4

    .line 839
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 841
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_2

    const-wide/16 v4, 0x64

    .line 846
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 848
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 852
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x2710

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    goto :goto_2

    .line 858
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 860
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v1
.end method

.method private merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 354
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->doClear()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 359
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->getAll()Ljava/util/HashMap;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    return v4

    :cond_2
    return v0

    .line 368
    :cond_3
    monitor-enter p1

    .line 369
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 375
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 377
    :cond_5
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 378
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_6
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez p3, :cond_4

    .line 384
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->notifyDataChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_7
    monitor-exit p1

    return v4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method private mergeWhenReload()V
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$Editor;

    .line 888
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z

    goto :goto_0

    .line 891
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private notifyDataChanged(Ljava/lang/String;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 396
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v1, :cond_0

    .line 399
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private obtainTotalBytes()[B
    .locals 9

    .line 1020
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getDataBytes()Landroid/util/Pair;

    move-result-object v0

    .line 1022
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [[B

    array-length v1, v1

    .line 1023
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    const v1, 0x7fffffff

    if-le v2, v1, :cond_0

    const v2, 0x7fffffff

    .line 1027
    :cond_0
    new-array v3, v2, [B

    .line 1031
    invoke-static {v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    .line 1032
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1033
    array-length v4, v2

    add-int/2addr v4, v5

    .line 1034
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 1038
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->increaseModifyID()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    .line 1039
    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1040
    array-length v6, v2

    add-int/2addr v4, v6

    .line 1041
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 1045
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [[B

    array-length v2, v0

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v7, v0, v4

    if-eqz v7, :cond_4

    .line 1047
    array-length v8, v7

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x1

    if-gt v8, v1, :cond_1

    .line 1048
    array-length v8, v7

    invoke-static {v7, v5, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    array-length v8, v7

    add-int/2addr v6, v8

    .line 1050
    invoke-direct {p0, v7}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1053
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write too much data in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedPreferencesNew"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v0, :cond_5

    .line 1055
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const/4 v1, 0x7

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-object v3
.end method

.method private parseBytesIntoMap([BZ)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 905
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 908
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    if-eqz p2, :cond_1

    .line 910
    :try_start_0
    iget v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-lez v3, :cond_1

    .line 911
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz p1, :cond_e

    .line 914
    array-length v4, p1

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 919
    :goto_2
    array-length v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v5, v7, :cond_b

    .line 921
    :try_start_1
    invoke-direct {p0, p1, v5}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getOneString([BI)Landroid/util/Pair;

    move-result-object v5

    .line 922
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 924
    invoke-direct {p0, p1, v7}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getOneString([BI)Landroid/util/Pair;

    move-result-object v7

    .line 925
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 928
    aget-byte v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    .line 930
    aget-byte v10, p1, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v11, 0x12

    if-eq v10, v11, :cond_4

    .line 932
    new-array v11, v3, [B

    aput-byte v9, v11, v4

    invoke-direct {p0, v11}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v11

    if-eq v10, v11, :cond_4

    .line 933
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_c

    .line 934
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v0

    :goto_3
    const/16 v6, 0x8

    array-length v7, p1

    int-to-long v7, v7

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto/16 :goto_5

    .line 939
    :cond_4
    invoke-virtual {p0, v9}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->checkTypeValid(B)Z

    move-result v10

    if-nez v10, :cond_7

    .line 941
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v5, :cond_6

    .line 942
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v6, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v0

    :goto_4
    const/16 v7, 0x9

    array-length v9, p1

    int-to-long v9, v9

    invoke-interface {v5, v6, v7, v9, v10}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_6
    move v5, v8

    const/4 v6, 0x0

    goto :goto_2

    .line 949
    :cond_7
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    invoke-direct {p0, v7, v9}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getObjectByType([BI)Ljava/lang/Object;

    move-result-object v7

    .line 950
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v9, :cond_9

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [B

    array-length v9, v9

    if-lez v9, :cond_9

    if-eqz v7, :cond_9

    .line 951
    new-instance v9, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [B

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    if-nez p2, :cond_8

    .line 952
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 953
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    move v5, v8

    goto/16 :goto_2

    :catch_0
    move-exception v3

    .line 957
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 958
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v5, :cond_c

    .line 959
    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v7, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    array-length p1, p1

    int-to-long v6, p1

    invoke-interface {v5, v0, v3, v6, v7}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_5

    :cond_b
    move v4, v6

    :cond_c
    :goto_5
    if-nez v4, :cond_d

    if-eqz p2, :cond_d

    .line 969
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 972
    :cond_d
    monitor-exit v2

    return v4

    .line 916
    :cond_e
    :goto_6
    monitor-exit v2

    return v3

    .line 972
    :goto_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method private reallocBuffer()V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getContentLength()I

    move-result v1

    .line 623
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    add-int/lit16 v1, v1, 0x400

    .line 625
    invoke-direct {p0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 628
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 752
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 756
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    .line 757
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    .line 758
    array-length v3, p2

    add-int/2addr v1, v3

    if-le v1, v2, :cond_1

    return v0

    .line 761
    :cond_1
    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private safeBufferPut(Ljava/nio/MappedByteBuffer;[B)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 872
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    .line 877
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    array-length v2, p2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    .line 878
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result p1

    array-length v0, p2

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x400

    invoke-direct {p0, p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    .line 881
    :cond_1
    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method private safeClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1211
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1213
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private save(Landroid/content/SharedPreferences$Editor;ZZZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 503
    :try_start_0
    iput v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mCurTryTime:I

    .line 505
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, v2, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    monitor-exit v0

    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 510
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 513
    invoke-direct {p0, p2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const-wide/16 p3, 0x3e8

    goto :goto_0

    :cond_3
    const-wide/16 p3, 0x0

    .line 516
    :goto_0
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;->setArg(Ljava/lang/Object;)V

    .line 517
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x533e

    .line 518
    iput p2, p1, Landroid/os/Message;->what:I

    .line 519
    iget-object p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 510
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private saveInner(Z)V
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncSaveObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 441
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->lockFile(Z)Ljava/nio/channels/FileLock;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 444
    :try_start_1
    iput-boolean v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    .line 446
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->tryReloadWhenSave()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mergeWhenReload()V

    const/4 v3, 0x0

    .line 448
    invoke-direct {p0, v3}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->notifyDataChanged(Ljava/lang/String;)V

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 452
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 453
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 471
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 473
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 455
    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 457
    :try_start_6
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->obtainTotalBytes()[B

    move-result-object v3

    .line 459
    invoke-direct {p0, v3, p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->saveToMappedBuffer([BZ)V

    .line 461
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->backup()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 469
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 471
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 473
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 455
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 463
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 464
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_2

    .line 465
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0xb

    const-wide/16 v5, -0x1

    invoke-interface {v3, p1, v4, v5, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 469
    :cond_2
    :try_start_c
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    :catch_3
    move-exception p1

    .line 471
    :try_start_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_1

    .line 469
    :goto_2
    :try_start_e
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v2

    .line 471
    :try_start_f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 473
    :goto_3
    iput-boolean v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    throw p1

    .line 476
    :cond_3
    iget v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mCurTryTime:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mCurTryTime:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_4

    .line 477
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$3;-><init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Z)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    :cond_4
    :goto_4
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private saveToMappedBuffer([BZ)V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 575
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v1, p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferPut(Ljava/nio/MappedByteBuffer;[B)V

    if-eqz p2, :cond_0

    .line 577
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 579
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startLoadFromDisk()V
    .locals 2

    .line 712
    monitor-enter p0

    const/4 v0, 0x0

    .line 713
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    .line 714
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$5;-><init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 714
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private tryReload()V
    .locals 5

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadStartTime:J

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private tryReloadWhenSave()Z
    .locals 2

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getModifyID()I

    move-result v0

    if-lez v0, :cond_0

    .line 431
    iget v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 432
    invoke-direct {p0, v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->load(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method checkTypeValid(B)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 222
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 231
    new-instance v0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;-><init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 131
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5

    .line 206
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 212
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 213
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 215
    :cond_3
    monitor-exit v0

    return p2

    .line 217
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 5

    .line 190
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 196
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 199
    :cond_3
    monitor-exit v0

    return p2

    .line 201
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 5

    .line 158
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 164
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 167
    :cond_3
    monitor-exit v0

    return p2

    .line 169
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 5

    .line 174
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    monitor-exit v0

    return-wide p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 180
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 183
    :cond_3
    monitor-exit v0

    return-wide p2

    .line 185
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getModifyID()I
    .locals 7

    .line 686
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x4

    .line 692
    new-array v2, v2, [B

    .line 693
    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v3, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 694
    invoke-static {v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v3

    .line 696
    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 697
    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    .line 698
    invoke-direct {p0, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    if-ne v4, v2, :cond_2

    :cond_1
    if-gez v3, :cond_6

    .line 699
    :cond_2
    iget v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    .line 700
    iget v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 701
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_5

    .line 702
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    :goto_1
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 705
    :cond_5
    monitor-exit v0

    return v1

    .line 707
    :cond_6
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 708
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 137
    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object p2, v1

    .line 141
    :cond_0
    :try_start_1
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 146
    :cond_3
    monitor-exit v0

    return-object p2

    .line 148
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "putStringSet is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onDestroy()V
    .locals 3

    .line 1301
    iget-boolean v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x533e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "@sp_sp_key@"

    const-string v2, "@_@"

    .line 1303
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;->startWatching()V

    :cond_0
    return-void
.end method

.method public setSharedPreferenceErrorListener(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    invoke-virtual {p1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;->stopWatching()V

    :cond_0
    return-void
.end method
