.class public Lmtopsdk/mtop/global/MtopConfig$MtopDomain;
.super Ljava/lang/Object;
.source "MtopConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/global/MtopConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopDomain"
.end annotation


# static fields
.field public static final FOR_DAILY:I = 0x2

.field public static final FOR_DAILY_2ND:I = 0x3

.field public static final FOR_ONLINE:I = 0x0

.field public static final FOR_PREPARED:I = 0x1


# instance fields
.field final defaultDomains:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 200
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "acs.m.taobao.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "acs.wapa.taobao.com"

    .line 205
    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "acs.waptest.taobao.com"

    .line 206
    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "api.waptest2nd.taobao.com"

    .line 207
    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDomain(Lmtopsdk/mtop/domain/EnvModeEnum;)Ljava/lang/String;
    .locals 3

    .line 213
    sget-object v0, Lmtopsdk/mtop/global/MtopConfig$1;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 223
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 221
    :cond_0
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aget-object p1, p1, v1

    return-object p1

    .line 219
    :cond_1
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    .line 217
    :cond_2
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aget-object p1, p1, v1

    return-object p1

    .line 215
    :cond_3
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V
    .locals 4

    .line 228
    sget-object v0, Lmtopsdk/mtop/global/MtopConfig$1;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, p1, v3

    .line 232
    :cond_1
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aput-object p2, p1, v2

    .line 234
    :cond_2
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aput-object p2, p1, v1

    .line 236
    :cond_3
    iget-object p1, p0, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->defaultDomains:[Ljava/lang/String;

    aput-object p2, p1, v0

    :goto_0
    return-void
.end method
