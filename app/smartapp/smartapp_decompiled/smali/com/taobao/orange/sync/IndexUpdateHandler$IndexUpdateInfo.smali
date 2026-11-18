.class public Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
.super Ljava/lang/Object;
.source "IndexUpdateHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/sync/IndexUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexUpdateInfo"
.end annotation


# static fields
.field static final SYNC_KEY_CDN:Ljava/lang/String; = "cdn"

.field static final SYNC_KEY_MD5:Ljava/lang/String; = "md5"

.field static final SYNC_KEY_PROTOCOL:Ljava/lang/String; = "protocol"

.field static final SYNC_KEY_RESOURCEID:Ljava/lang/String; = "resourceId"


# instance fields
.field public cdn:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public protocol:Ljava/lang/String;

.field public resourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method checkVaild()Z
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 168
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IndexUpdateHandler"

    const-string v3, "lack param"

    invoke-static {v2, v3, v1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    check-cast p1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    .line 183
    iget-object v1, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 195
    iget-object v1, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 196
    iget-object v1, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IndexUpdateInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cdn=\'"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId=\'"

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", protocol=\'"

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
