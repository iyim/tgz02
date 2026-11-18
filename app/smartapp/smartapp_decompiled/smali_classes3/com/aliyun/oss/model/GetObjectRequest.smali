.class public Lcom/aliyun/oss/model/GetObjectRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "GetObjectRequest.java"


# instance fields
.field private absoluteUrl:Ljava/net/URL;

.field private matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private process:Ljava/lang/String;

.field private range:[J

.field private responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

.field private unmodifiedSinceConstraint:Ljava/util/Date;

.field private useUrlSignature:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->useUrlSignature:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->useUrlSignature:Z

    .line 66
    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->absoluteUrl:Ljava/net/URL;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->useUrlSignature:Z

    .line 68
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p2, :cond_0

    .line 69
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearMatchingETagConstraints()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearNonmatchingETagConstraints()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAbsoluteUri()Ljava/net/URL;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->absoluteUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getMatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNonmatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getProcess()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->process:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()[J
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->range:[J

    return-object v0
.end method

.method public getResponseHeaders()Lcom/aliyun/oss/model/ResponseHeaderOverrides;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public isUseUrlSignature()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->useUrlSignature:Z

    return v0
.end method

.method public setAbsoluteUri(Ljava/net/URL;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->absoluteUrl:Ljava/net/URL;

    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->process:Ljava/lang/String;

    return-void
.end method

.method public setRange(JJ)V
    .locals 2

    const/4 v0, 0x2

    .line 100
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    iput-object v0, p0, Lcom/aliyun/oss/model/GetObjectRequest;->range:[J

    return-void
.end method

.method public setResponseHeaders(Lcom/aliyun/oss/model/ResponseHeaderOverrides;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->responseHeaders:Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-void
.end method

.method public setUseUrlSignature(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/aliyun/oss/model/GetObjectRequest;->useUrlSignature:Z

    return-void
.end method

.method public withRange(JJ)Lcom/aliyun/oss/model/GetObjectRequest;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aliyun/oss/model/GetObjectRequest;->setRange(JJ)V

    return-object p0
.end method
