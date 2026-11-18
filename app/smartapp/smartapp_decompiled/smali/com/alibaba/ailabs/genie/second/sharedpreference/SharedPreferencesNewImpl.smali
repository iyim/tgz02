.class public final Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;,
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;,
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteFloatUtils;,
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;,
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteLongUtils;,
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;,
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;,
        Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$SUPPORTED_TYPE;
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

.field private static final MAX_HANDLERTHREAD:I = 0x3

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

.field private static mHandlerThreadPool:[Landroid/os/HandlerThread; = null

.field private static final mSaveMessageID:I = 0x533e

.field private static sCachedThreadPool:Ljava/util/concurrent/ExecutorService;


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

.field private mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

.field private mFile:Ljava/io/File;

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mFileMonitor:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;

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

.field private mSaveRunnable:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;

.field private final mSyncObj:Ljava/lang/Object;

.field private final mSyncSaveObj:Ljava/lang/Object;

.field private final mTryReloadRunnable:Ljava/lang/Runnable;

.field private mTryReloadStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 94
    new-array v1, v0, [Landroid/os/HandlerThread;

    sput-object v1, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    sget-object v2, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    new-instance v3, Landroid/os/HandlerThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newsp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 97
    sget-object v2, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->sCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mLoaded:Z

    .line 55
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    .line 56
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncSaveObj:Ljava/lang/Object;

    .line 87
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    const/4 p2, 0x0

    .line 91
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mIsSaving:Z

    .line 438
    new-instance p2, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$2;-><init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    .line 520
    new-instance p2, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$4;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$4;-><init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;

    .line 128
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    .line 129
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->initBuffer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    invoke-direct {p0, p4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->startLoadFromDisk(Z)V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$1;-><init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->save(Landroid/content/SharedPreferences$Editor;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->saveInner(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->loadFromDiskLocked()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->tryReload()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private allocBuffer(I)Ljava/nio/MappedByteBuffer;
    .locals 7

    .line 812
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 817
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 819
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 822
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz p1, :cond_1

    .line 823
    invoke-virtual {p1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 826
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    return-object p1
.end method

.method private awaitLoadedLocked()V
    .locals 1

    .line 781
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mLoaded:Z

    if-nez v0, :cond_1

    .line 782
    monitor-enter p0

    .line 783
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 785
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 787
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 790
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 793
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->tryReload()V

    return-void
.end method

.method private backup()V
    .locals 10

    const/4 v0, 0x0

    .line 1235
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1237
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1239
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1240
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1241
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    int-to-long v6, v1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1246
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

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

    .line 1243
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1245
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1246
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception v1

    .line 1245
    :goto_2
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1246
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    throw v1
.end method

.method private getBCCCode([B)B
    .locals 4

    .line 1312
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

    .line 1181
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1182
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 1183
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1184
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    .line 1185
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

    .line 1186
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 1187
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteFloatUtils;->floatToBytes(F)[B

    move-result-object p1

    return-object p1

    .line 1188
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1189
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object p1

    return-object p1

    .line 1190
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 1191
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteLongUtils;->longToBytes(J)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private getContentLength()I
    .locals 7

    .line 626
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    goto :goto_3

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x4

    .line 632
    new-array v3, v2, [B

    .line 633
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v4, v3}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 634
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v4

    .line 635
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 636
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->get()B

    move-result v2

    const/16 v5, 0x12

    if-eq v2, v5, :cond_1

    .line 637
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    if-gez v4, :cond_6

    .line 638
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_5

    .line 639
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    :goto_1
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 642
    :cond_5
    monitor-exit v0

    return v1

    :cond_6
    const v1, 0x7fffffff

    if-le v4, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v4

    .line 649
    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 650
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

    .line 564
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [[B

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 568
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 575
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 576
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 577
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v8, :cond_0

    .line 578
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    if-eqz v7, :cond_0

    .line 580
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 581
    array-length v9, v8

    invoke-static {v9}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v9

    .line 582
    aput-object v9, v1, v6

    add-int/lit8 v10, v6, 0x1

    .line 583
    aput-object v8, v1, v10

    .line 584
    array-length v9, v9

    array-length v8, v8

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 587
    invoke-direct {p0, v7}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getBytes(Ljava/lang/Object;)[B

    move-result-object v8

    .line 588
    array-length v9, v8

    invoke-static {v9}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v9

    add-int/lit8 v10, v6, 0x2

    .line 590
    aput-object v9, v1, v10

    add-int/lit8 v10, v6, 0x3

    .line 591
    aput-object v8, v1, v10

    .line 592
    array-length v9, v9

    array-length v8, v8

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 595
    new-array v8, v3, [B

    .line 596
    invoke-direct {p0, v7}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getObjectType(Ljava/lang/Object;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v8, v4

    add-int/lit8 v7, v6, 0x4

    .line 597
    aput-object v8, v1, v7

    .line 598
    array-length v7, v8

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x5

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 603
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 569
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

.method private getHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .line 1347
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    .line 1348
    :cond_0
    rem-int/lit8 v0, v0, 0x3

    .line 1349
    sget-object v1, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private getMaskByte([B)B
    .locals 0

    .line 1319
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getBCCCode([B)B

    move-result p1

    return p1
.end method

.method private getObjectByType([BI)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_5

    .line 1157
    array-length v0, p1

    if-lez v0, :cond_5

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1160
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

    .line 1162
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

    .line 1164
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteFloatUtils;->bytesToFloat([B)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 1166
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 1168
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteLongUtils;->bytesToLong([B)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1171
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private getObjectType(Ljava/lang/Object;)I
    .locals 1

    .line 1141
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x5

    return p1

    .line 1143
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    return p1

    .line 1145
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 1147
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    .line 1149
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

    .line 1031
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1032
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 1036
    aget-byte v0, p1, p2

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    aget-byte v0, p1, p2

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v4

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "length string\'s finish mark missing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 1042
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v0

    if-ltz v0, :cond_5

    add-int v1, p2, v0

    .line 1043
    array-length v4, p1

    if-ge v1, v4, :cond_5

    const v4, 0x7fffffff

    if-gt v0, v4, :cond_5

    const/4 v4, 0x0

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1051
    :cond_2
    new-array v4, v0, [B

    .line 1052
    invoke-static {p1, p2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1055
    aget-byte p2, p1, v1

    if-eq p2, v3, :cond_4

    aget-byte p1, p1, v1

    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 1056
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Stored bytes\' finish mark missing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    add-int/lit8 p2, v1, 0x1

    .line 1061
    :goto_2
    new-instance p1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1044
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "length string is invalid"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private increaseModifyID()I
    .locals 2

    .line 621
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    .line 622
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    return v0
.end method

.method private initBuffer()Z
    .locals 8

    .line 835
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const/16 v0, 0xa

    .line 837
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 838
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 839
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 841
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0

    .line 846
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 850
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_1

    .line 851
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_1
    const/4 v2, 0x0

    .line 855
    :cond_2
    :goto_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    const-string/jumbo v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 856
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 857
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;

    if-nez v2, :cond_4

    .line 859
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->initFileHeader()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 863
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 865
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_3

    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

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

    invoke-interface {v3, v2, v0, v4, v5}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method private initFileHeader()V
    .locals 5

    .line 1125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 1127
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1128
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x4

    .line 1129
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v0, v3

    .line 1131
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    const/4 v4, 0x5

    .line 1132
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x9

    .line 1133
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v0, v3

    .line 1135
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1136
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

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

    .line 672
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->lockFile(Z)Ljava/nio/channels/FileLock;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_b

    .line 717
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->loadFromBakFile()Z

    goto/16 :goto_6

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 676
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->reallocBuffer()V

    .line 678
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_7

    .line 682
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getContentLength()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v3, v3

    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    if-gtz v7, :cond_7

    .line 698
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz p1, :cond_4

    .line 703
    iget p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_5

    .line 704
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_5
    if-eqz v2, :cond_6

    .line 709
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void

    .line 687
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getModifyID()I

    move-result v5

    iput v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    .line 688
    iget v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    if-lez v5, :cond_8

    .line 689
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 690
    :try_start_4
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int v4, v3

    sub-int/2addr v4, v7

    .line 691
    new-array v0, v4, [B

    .line 692
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v3, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 693
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

    .line 698
    :cond_8
    :goto_4
    :try_start_6
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .line 700
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz p1, :cond_9

    if-nez v0, :cond_a

    .line 703
    iget p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_a

    .line 704
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_a
    if-eqz v2, :cond_b

    .line 709
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_6
    return-void

    .line 698
    :cond_c
    :goto_7
    :try_start_8
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    if-eqz p1, :cond_d

    .line 703
    iget p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_e

    .line 704
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_e
    if-eqz v2, :cond_f

    .line 709
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_9
    return-void

    :catchall_1
    move-exception v3

    .line 698
    :try_start_a
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_a

    :catch_6
    move-exception v1

    .line 700
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    if-eqz p1, :cond_10

    if-nez v0, :cond_11

    .line 703
    iget p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_11

    .line 704
    :cond_10
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_11
    if-eqz v2, :cond_12

    .line 709
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
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

    .line 1266
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    const-string/jumbo v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x4

    .line 1267
    :try_start_1
    new-array v7, v7, [B

    .line 1268
    array-length v8, v7

    invoke-virtual {v6, v7, v4, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1269
    invoke-static {v7}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v8, 0xa

    if-gt v7, v8, :cond_0

    .line 1287
    invoke-direct {p0, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1290
    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v4

    :cond_0
    const v9, 0x7fffffff

    if-le v7, v9, :cond_1

    const v7, 0x7fffffff

    :cond_1
    int-to-long v9, v7

    .line 1276
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-lez v13, :cond_2

    .line 1277
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v7, v9

    :cond_2
    sub-int/2addr v7, v8

    .line 1280
    new-array v7, v7, [B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v8, 0xa

    .line 1281
    :try_start_4
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1282
    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1287
    invoke-direct {p0, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1290
    :try_start_5
    invoke-direct {p0, v7, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1292
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1296
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_4

    .line 1297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, v7

    int-to-long v6, v1

    invoke-interface {v3, v0, v2, v6, v7}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

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

    .line 1285
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1287
    invoke-direct {p0, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1290
    :try_start_7
    invoke-direct {p0, v7, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    .line 1292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1296
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v0, :cond_4

    .line 1297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

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

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_4
    :goto_5
    return v5

    :catchall_2
    move-exception v8

    move-object v14, v8

    move-object v8, v3

    move-object v3, v7

    move-object v7, v14

    .line 1287
    :goto_6
    invoke-direct {p0, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1290
    :try_start_8
    invoke-direct {p0, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v6

    .line 1292
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-nez v3, :cond_5

    if-eqz v8, :cond_8

    .line 1296
    :cond_5
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v6, :cond_8

    .line 1297
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

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

    invoke-interface {v6, v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_8
    throw v7
.end method

.method private loadFromDiskLocked()V
    .locals 1

    .line 770
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 774
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->load(Z)V

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mLoaded:Z

    .line 777
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private lockFile(Z)Ljava/nio/channels/FileLock;
    .locals 8

    .line 875
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_1
    if-nez v1, :cond_4

    .line 884
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 886
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_2

    const-wide/16 v4, 0x64

    .line 891
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 893
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x2710

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    goto :goto_2

    .line 903
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 905
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v1
.end method

.method private merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 391
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->doClear()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 396
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->getAll()Ljava/util/HashMap;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 401
    :cond_2
    monitor-enter p1

    .line 402
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 405
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 408
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 410
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez p3, :cond_3

    .line 415
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->notifyDataChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_5
    monitor-exit p1

    const/4 p1, 0x1

    return p1

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

    .line 930
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$Editor;

    .line 933
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z

    goto :goto_0

    .line 936
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

    .line 425
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 427
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v1, :cond_0

    .line 430
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private obtainTotalBytes()[B
    .locals 9

    .line 1066
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getDataBytes()Landroid/util/Pair;

    move-result-object v0

    .line 1068
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [[B

    array-length v1, v1

    .line 1069
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

    .line 1073
    :cond_0
    new-array v3, v2, [B

    .line 1077
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    .line 1078
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    array-length v4, v2

    add-int/2addr v4, v5

    .line 1080
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 1084
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->increaseModifyID()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    .line 1085
    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    array-length v6, v2

    add-int/2addr v4, v6

    .line 1087
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 1091
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [[B

    array-length v2, v0

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v7, v0, v4

    if-eqz v7, :cond_4

    .line 1093
    array-length v8, v7

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x1

    if-gt v8, v1, :cond_1

    .line 1094
    array-length v8, v7

    invoke-static {v7, v5, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    array-length v8, v7

    add-int/2addr v6, v8

    .line 1096
    invoke-direct {p0, v7}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1099
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write too much data in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

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

    .line 1100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v0, :cond_5

    .line 1101
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const/4 v1, 0x7

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

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

    .line 947
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 951
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 956
    iget v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    if-lez v3, :cond_1

    .line 957
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1
    const/4 v3, 0x1

    if-eqz p1, :cond_e

    .line 960
    array-length v4, p1

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 965
    :goto_1
    array-length v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v5, v7, :cond_b

    .line 967
    :try_start_1
    invoke-direct {p0, p1, v5}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getOneString([BI)Landroid/util/Pair;

    move-result-object v5

    .line 968
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 970
    invoke-direct {p0, p1, v7}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getOneString([BI)Landroid/util/Pair;

    move-result-object v7

    .line 971
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 974
    aget-byte v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    .line 976
    aget-byte v10, p1, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v11, 0x12

    if-eq v10, v11, :cond_4

    .line 978
    new-array v11, v3, [B

    aput-byte v9, v11, v4

    invoke-direct {p0, v11}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v11

    if-eq v10, v11, :cond_4

    .line 979
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_c

    .line 980
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    const/16 v6, 0x8

    array-length v7, p1

    int-to-long v7, v7

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 985
    :cond_4
    invoke-virtual {p0, v9}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->checkTypeValid(B)Z

    move-result v10

    if-nez v10, :cond_7

    .line 987
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v5, :cond_6

    .line 988
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object v6, v1

    :goto_3
    const/16 v7, 0x9

    array-length v9, p1

    int-to-long v9, v9

    invoke-interface {v5, v6, v7, v9, v10}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_6
    move v5, v8

    const/4 v6, 0x0

    goto :goto_1

    .line 995
    :cond_7
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    invoke-direct {p0, v7, v9}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getObjectByType([BI)Ljava/lang/Object;

    move-result-object v7

    .line 996
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v9, :cond_9

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [B

    array-length v9, v9

    if-lez v9, :cond_9

    if-eqz v7, :cond_9

    .line 997
    new-instance v9, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [B

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    if-nez p2, :cond_8

    .line 998
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 999
    :cond_8
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    move v5, v8

    goto/16 :goto_1

    :catch_0
    move-exception v3

    .line 1003
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1004
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v5, :cond_c

    .line 1005
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v7, :cond_a

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    array-length p1, p1

    int-to-long v6, p1

    invoke-interface {v5, v1, v3, v6, v7}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_4

    :cond_b
    move v4, v6

    :cond_c
    :goto_4
    if-nez v4, :cond_d

    if-eqz p2, :cond_d

    .line 1015
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 1018
    :cond_d
    monitor-exit v0

    return v4

    .line 962
    :cond_e
    :goto_5
    monitor-exit v0

    return v3

    .line 1018
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private reallocBuffer()V
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getContentLength()I

    move-result v1

    .line 661
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    add-int/lit16 v1, v1, 0x400

    .line 663
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 666
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
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

    .line 797
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 800
    :cond_0
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 801
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    .line 802
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    .line 803
    array-length v3, p2

    add-int/2addr v1, v3

    if-le v1, v2, :cond_1

    return v0

    .line 806
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

    .line 917
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 921
    :cond_0
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    .line 922
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    array-length v2, p2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    .line 923
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result p1

    array-length v0, p2

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x400

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    .line 926
    :cond_1
    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method private safeClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1253
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1255
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private save(Landroid/content/SharedPreferences$Editor;ZZZ)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 534
    :try_start_0
    iput v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mCurTryTime:I

    const/4 v2, 0x1

    .line 538
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, v3, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 540
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 541
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 546
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    .line 551
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->saveInner(Z)V

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    const-wide/16 p3, 0x3e8

    goto :goto_0

    :cond_5
    const-wide/16 p3, 0x0

    .line 554
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;->setArg(Ljava/lang/Object;)V

    .line 555
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x533e

    .line 556
    iput p2, p1, Landroid/os/Message;->what:I

    .line 557
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 548
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private saveInner(Z)V
    .locals 7

    .line 471
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncSaveObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 472
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->lockFile(Z)Ljava/nio/channels/FileLock;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 475
    :try_start_1
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mIsSaving:Z

    .line 477
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->tryReloadWhenSave()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mergeWhenReload()V

    const/4 v3, 0x0

    .line 479
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->notifyDataChanged(Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 483
    :try_start_2
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 484
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 502
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 504
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mIsSaving:Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 486
    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 488
    :try_start_6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->obtainTotalBytes()[B

    move-result-object v3

    .line 490
    invoke-direct {p0, v3, p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->saveToMappedBuffer([BZ)V

    .line 492
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->backup()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 500
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 502
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 504
    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mIsSaving:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 486
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

    .line 494
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 495
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_2

    .line 496
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0xb

    const-wide/16 v5, -0x1

    invoke-interface {v3, p1, v4, v5, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 500
    :cond_2
    :try_start_c
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    :catch_3
    move-exception p1

    .line 502
    :try_start_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_1

    .line 500
    :goto_2
    :try_start_e
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v2

    .line 502
    :try_start_f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 504
    :goto_3
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mIsSaving:Z

    throw p1

    .line 507
    :cond_3
    iget v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mCurTryTime:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mCurTryTime:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_4

    .line 508
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$3;-><init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Z)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
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

    .line 611
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 613
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v1, p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeBufferPut(Ljava/nio/MappedByteBuffer;[B)V

    if-eqz p2, :cond_0

    .line 615
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 617
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

.method private startLoadFromDisk(Z)V
    .locals 1

    .line 750
    monitor-enter p0

    const/4 v0, 0x0

    .line 751
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mLoaded:Z

    .line 752
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    new-instance v0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$5;-><init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V

    if-eqz p1, :cond_0

    .line 763
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 765
    :cond_0
    sget-object p1, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->sCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 752
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private tryReload()V
    .locals 5

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mTryReloadStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mTryReloadStartTime:J

    .line 455
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private tryReloadWhenSave()Z
    .locals 2

    .line 461
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getModifyID()I

    move-result v0

    if-lez v0, :cond_0

    .line 462
    iget v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyID:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 463
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->load(Z)V

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
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 245
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 253
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 254
    new-instance v0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;-><init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V

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

    .line 152
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 154
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5

    .line 229
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 233
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

    .line 235
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 236
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

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

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 238
    :cond_3
    monitor-exit v0

    return p2

    .line 240
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 5

    .line 213
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 217
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

    .line 219
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

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

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 222
    :cond_3
    monitor-exit v0

    return p2

    .line 224
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 5

    .line 181
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 185
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

    .line 187
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

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

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 190
    :cond_3
    monitor-exit v0

    return p2

    .line 192
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 5

    .line 197
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 201
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

    .line 203
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

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

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 206
    :cond_3
    monitor-exit v0

    return-wide p2

    .line 208
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getModifyID()I
    .locals 7

    .line 724
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x4

    .line 730
    new-array v2, v2, [B

    .line 731
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v3, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 732
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v3

    .line 734
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 735
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    .line 736
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    if-ne v4, v2, :cond_2

    :cond_1
    if-gez v3, :cond_6

    .line 737
    :cond_2
    iget v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    .line 738
    iget v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 739
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_5

    .line 740
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    :goto_1
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 743
    :cond_5
    monitor-exit v0

    return v1

    .line 745
    :cond_6
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 746
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 160
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object p2, v1

    .line 164
    :cond_0
    :try_start_1
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 166
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

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

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 169
    :cond_3
    monitor-exit v0

    return-object p2

    .line 171
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

    .line 176
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "putStringSet is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onDestroy()V
    .locals 2

    .line 1341
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mIsSaving:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x533e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1342
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->saveInner(Z)V

    :cond_1
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 264
    :try_start_1
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    :cond_0
    :goto_0
    new-instance p1, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v1, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;-><init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;->startWatching()V

    .line 275
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public setSharedPreferenceErrorListener(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mErrorListener:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->mFileMonitor:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;->stopWatching()V

    .line 287
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
