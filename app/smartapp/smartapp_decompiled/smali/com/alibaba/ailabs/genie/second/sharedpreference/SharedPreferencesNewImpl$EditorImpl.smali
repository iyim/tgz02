.class public final Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private mModified:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v1, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->access$100(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 350
    monitor-enter p0

    const/4 v0, 0x1

    .line 351
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    .line 352
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 353
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->access$100(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V

    return v1
.end method

.method doClear()Z
    .locals 2

    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    const/4 v1, 0x0

    .line 370
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    .line 371
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 372
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 334
    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 337
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 329
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 321
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 305
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "putStringSet is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 345
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
