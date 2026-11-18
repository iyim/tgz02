.class final Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/core/persistent/MySharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MySharedPreferencesImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;
    }
.end annotation


# static fields
.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private hasChange:Z

.field private final mBackupFile:Ljava/io/File;

.field private final mFile:Ljava/io/File;

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/Map;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mContent:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    .line 132
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 133
    invoke-static {p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 134
    iput p2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMode:I

    if-eqz p3, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 136
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->writeFileLocked()Z

    move-result p0

    return p0
.end method

.method private createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2

    const/4 v0, 0x0

    .line 349
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 356
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private writeFileLocked()Z
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/ta/utdid2/core/persistent/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 390
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    nop

    .line 396
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return v1
.end method


# virtual methods
.method public checkFile()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .locals 1

    .line 343
    new-instance v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;-><init>(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 184
    monitor-enter p0

    .line 186
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 193
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasFileChanged()Z
    .locals 1

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replace(Ljava/util/Map;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 165
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setHasChange(Z)V
    .locals 0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iput-boolean p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasChange:Z

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
