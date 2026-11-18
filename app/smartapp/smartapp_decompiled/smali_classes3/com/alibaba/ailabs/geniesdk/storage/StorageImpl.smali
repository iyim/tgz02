.class public Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/storage/IStorage;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 3

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public get(Ljava/lang/String;I)I
    .locals 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public get(Ljava/lang/String;J)J
    .locals 3

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-wide p2
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 3

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;F)Z
    .locals 3

    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 76
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public set(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 20
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public set(Ljava/lang/String;J)Z
    .locals 3

    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 34
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 62
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public set(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/storage/StorageImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 48
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
