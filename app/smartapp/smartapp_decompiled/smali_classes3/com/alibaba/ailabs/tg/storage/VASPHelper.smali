.class public Lcom/alibaba/ailabs/tg/storage/VASPHelper;
.super Ljava/lang/Object;
.source "VASPHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ApplySharedPref"
    }
.end annotation


# static fields
.field private static final VASP_NAME:Ljava/lang/String; = "video_assistant_sp"

.field private static mInstance:Lcom/alibaba/ailabs/tg/storage/VASPHelper;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "video_assistant_sp"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/tg/storage/VASPHelper;
    .locals 3

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mInstance:Lcom/alibaba/ailabs/tg/storage/VASPHelper;

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mInstance:Lcom/alibaba/ailabs/tg/storage/VASPHelper;

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Lcom/alibaba/ailabs/tg/storage/VASPHelper;

    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/tg/storage/VASPHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mInstance:Lcom/alibaba/ailabs/tg/storage/VASPHelper;

    .line 33
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mInstance:Lcom/alibaba/ailabs/tg/storage/VASPHelper;

    return-object v0

    :catchall_0
    move-exception v1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;J)J
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isHas(Ljava/lang/String;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/storage/VASPHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
