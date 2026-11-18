.class public final Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;
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

.field final synthetic this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v1, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$300(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 313
    monitor-enter p0

    const/4 v0, 0x1

    .line 314
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    .line 315
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 316
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$300(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V

    return v1
.end method

.method doClear()Z
    .locals 2

    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    const/4 v1, 0x0

    .line 333
    iput-boolean v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    .line 334
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 335
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

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 341
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

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

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 276
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 284
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 263
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

    .line 268
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "putStringSet is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
