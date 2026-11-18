.class public Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;
.super Ljava/lang/Object;
.source "SetBucketCORSRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/SetBucketCORSRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CORSRule"
.end annotation


# instance fields
.field private allowedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exposeHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxAgeSeconds:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedOrigins:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedMethods:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedHeaders:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->exposeHeaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAllowdOrigin(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedOrigins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAllowedHeader(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAllowedMethod(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addExposeHeader(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->exposeHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearAllowedHeaders()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearAllowedMethods()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearAllowedOrigins()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedOrigins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearExposeHeaders()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->exposeHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAllowedHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getAllowedMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedMethods:Ljava/util/List;

    return-object v0
.end method

.method public getAllowedOrigins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedOrigins:Ljava/util/List;

    return-object v0
.end method

.method public getExposeHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->exposeHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getMaxAgeSeconds()Ljava/lang/Integer;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->maxAgeSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAllowedHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 207
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setAllowedMethods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setAllowedOrigins(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedOrigins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->allowedOrigins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setExposeHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->exposeHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->exposeHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setMaxAgeSeconds(Ljava/lang/Integer;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->maxAgeSeconds:Ljava/lang/Integer;

    return-void
.end method
