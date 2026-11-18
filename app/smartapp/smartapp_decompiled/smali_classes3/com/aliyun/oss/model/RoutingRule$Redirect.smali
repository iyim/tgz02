.class public Lcom/aliyun/oss/model/RoutingRule$Redirect;
.super Ljava/lang/Object;
.source "RoutingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/RoutingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Redirect"
.end annotation


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpRedirectCode:Ljava/lang/Integer;

.field private mirrorProbeURL:Ljava/lang/String;

.field private mirrorSecondaryURL:Ljava/lang/String;

.field private mirrorURL:Ljava/lang/String;

.field private passOriginalSlashes:Ljava/lang/Boolean;

.field private passQueryString:Ljava/lang/Boolean;

.field private protocol:Lcom/aliyun/oss/model/RoutingRule$Protocol;

.field private redirectType:Lcom/aliyun/oss/model/RoutingRule$RedirectType;

.field private replaceKeyPrefixWith:Ljava/lang/String;

.field private replaceKeyWith:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public ensureRedirectValid()V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->hostName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RoutingRuleRedirectInvalid"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->protocol:Lcom/aliyun/oss/model/RoutingRule$Protocol;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyPrefixWith:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyWith:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->httpRedirectCode:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Redirect element must contain at least one of the sibling elements"

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyPrefixWith:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyWith:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "ReplaceKeyPrefixWith or ReplaceKeyWith only choose one"

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->redirectType:Lcom/aliyun/oss/model/RoutingRule$RedirectType;

    sget-object v4, Lcom/aliyun/oss/model/RoutingRule$RedirectType;->Mirror:Lcom/aliyun/oss/model/RoutingRule$RedirectType;

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 268
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "MirrorURL must have a value"

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->redirectType:Lcom/aliyun/oss/model/RoutingRule$RedirectType;

    sget-object v4, Lcom/aliyun/oss/model/RoutingRule$RedirectType;->Mirror:Lcom/aliyun/oss/model/RoutingRule$RedirectType;

    if-ne v0, v4, :cond_8

    .line 273
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 275
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "MirrorURL is invalid"

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRedirectCode()Ljava/lang/Integer;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->httpRedirectCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMirrorProbeURL()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorProbeURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorSecondaryURL()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorSecondaryURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorURL()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lcom/aliyun/oss/model/RoutingRule$Protocol;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->protocol:Lcom/aliyun/oss/model/RoutingRule$Protocol;

    return-object v0
.end method

.method public getRedirectType()Lcom/aliyun/oss/model/RoutingRule$RedirectType;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->redirectType:Lcom/aliyun/oss/model/RoutingRule$RedirectType;

    return-object v0
.end method

.method public getReplaceKeyPrefixWith()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyPrefixWith:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceKeyWith()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyWith:Ljava/lang/String;

    return-object v0
.end method

.method public isPassOriginalSlashes()Ljava/lang/Boolean;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->passOriginalSlashes:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isPassQueryString()Ljava/lang/Boolean;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->passQueryString:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setHttpRedirectCode(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_1

    .line 209
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->httpRedirectCode:Ljava/lang/Integer;

    return-void

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "HttpRedirectCode must be a valid HTTP 3xx status code."

    aput-object v2, v0, v1

    const-string v1, "RedirectHttpRedirectCodeInvalid"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMirrorProbeURL(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorProbeURL:Ljava/lang/String;

    return-void
.end method

.method public setMirrorSecondaryURL(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorSecondaryURL:Ljava/lang/String;

    return-void
.end method

.method public setMirrorURL(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->mirrorURL:Ljava/lang/String;

    return-void
.end method

.method public setPassOriginalSlashes(Ljava/lang/Boolean;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->passOriginalSlashes:Ljava/lang/Boolean;

    return-void
.end method

.method public setPassQueryString(Ljava/lang/Boolean;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->passQueryString:Ljava/lang/Boolean;

    return-void
.end method

.method public setProtocol(Lcom/aliyun/oss/model/RoutingRule$Protocol;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->protocol:Lcom/aliyun/oss/model/RoutingRule$Protocol;

    return-void
.end method

.method public setRedirectType(Lcom/aliyun/oss/model/RoutingRule$RedirectType;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->redirectType:Lcom/aliyun/oss/model/RoutingRule$RedirectType;

    return-void
.end method

.method public setReplaceKeyPrefixWith(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyPrefixWith:Ljava/lang/String;

    return-void
.end method

.method public setReplaceKeyWith(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Redirect;->replaceKeyWith:Ljava/lang/String;

    return-void
.end method
