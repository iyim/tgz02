.class public abstract Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;
.super Ljava/lang/Object;
.source "AbstractNetworkConverter.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/converter/INetworkConverter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.AbstractNetworkConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getCustomDomain(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 2

    .line 282
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 284
    iget-object v0, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customDomain:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customDomain:Ljava/lang/String;

    return-object p1

    .line 288
    :cond_0
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter$1;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    iget-object v1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customDailyDomain:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customDailyDomain:Ljava/lang/String;

    return-object p1

    .line 296
    :cond_2
    iget-object v0, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customPreDomain:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customPreDomain:Ljava/lang/String;

    return-object p1

    .line 290
    :cond_3
    iget-object v0, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customOnlineDomain:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->customOnlineDomain:Ljava/lang/String;

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected addMtopSdkProperty(Lmtopsdk/mtop/intf/Mtop;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/intf/Mtop;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isMtopsdkPropertySwitchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object p1

    invoke-virtual {p1}, Lmtopsdk/mtop/global/MtopConfig;->getMtopProperties()Ljava/util/Map;

    move-result-object p1

    .line 326
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 328
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mtopsdk."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x8

    .line 331
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addMtopSdkProperty]get mtopsdk properties error,key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtopsdk.AbstractNetworkConverter"

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected buildBaseUrl(Lmtopsdk/framework/domain/MtopContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    :try_start_0
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v2}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v2

    .line 255
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 256
    iget-object v4, v2, Lmtopsdk/mtop/global/MtopConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object v4, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 257
    iget-object v3, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {p0, p1}, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;->getCustomDomain(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    :cond_0
    iget-object v3, v2, Lmtopsdk/mtop/global/MtopConfig;->mtopDomain:Lmtopsdk/mtop/global/MtopConfig$MtopDomain;

    iget-object v4, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v4, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/global/MtopConfig$MtopDomain;->getDomain(Lmtopsdk/mtop/domain/EnvModeEnum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lmtopsdk/mtop/global/MtopConfig;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 270
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string p3, "mtopsdk.AbstractNetworkConverter"

    const-string v0, "[buildBaseUrl] build mtop baseUrl error."

    invoke-static {p3, p1, v0, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected buildRequestHeaders(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;->getHeaderConversionMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "mtopsdk.AbstractNetworkConverter"

    if-nez v0, :cond_0

    const-string p1, "[buildRequestHeaders]headerConversionMap is null,buildRequestHeaders error."

    .line 186
    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 190
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz p2, :cond_1

    .line 192
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 195
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "="

    const-string v4, "[buildRequestHeaders]urlEncode "

    const-string v5, "error"

    const-string v6, "utf-8"

    if-eqz p2, :cond_4

    .line 199
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 201
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz p3, :cond_3

    if-eqz v7, :cond_2

    .line 204
    :try_start_0
    invoke-static {v7, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 209
    :cond_3
    :goto_1
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 219
    :try_start_1
    invoke-static {p3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 221
    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p2, "lng"

    .line 225
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "lat"

    .line 226
    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 228
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    .line 230
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_2
    const-string p1, "x-location"

    .line 233
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 235
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[buildRequestHeaders]urlEncode x-location="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v3
.end method

.method public convert(Lmtopsdk/framework/domain/MtopContext;)Lmtopsdk/network/domain/Request;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "utf-8"

    const-string v3, "application/x-www-form-urlencoded;charset=UTF-8"

    const-string v4, "mtopsdk.AbstractNetworkConverter"

    .line 38
    iget-object v5, v0, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 39
    iget-object v6, v0, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 40
    invoke-virtual {v6}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v6

    .line 41
    iget-object v7, v0, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    .line 44
    new-instance v8, Lmtopsdk/network/domain/Request$Builder;

    invoke-direct {v8}, Lmtopsdk/network/domain/Request$Builder;-><init>()V

    .line 45
    invoke-virtual {v8, v7}, Lmtopsdk/network/domain/Request$Builder;->seqNo(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;

    .line 46
    iget-object v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->reqContext(Ljava/lang/Object;)Lmtopsdk/network/domain/Request$Builder;

    .line 47
    iget v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->bizId(I)Lmtopsdk/network/domain/Request$Builder;

    .line 48
    iget v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->connectTimeout(I)Lmtopsdk/network/domain/Request$Builder;

    .line 49
    iget v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->readTimeout(I)Lmtopsdk/network/domain/Request$Builder;

    .line 50
    iget v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTimes:I

    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->retryTimes(I)Lmtopsdk/network/domain/Request$Builder;

    .line 51
    iget-object v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->appKey(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;

    .line 52
    iget-object v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->authCode(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;

    .line 54
    iget-object v9, v6, Lmtopsdk/mtop/global/MtopConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eqz v9, :cond_3

    .line 56
    sget-object v10, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter$1;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v11, 0x2

    if-eq v9, v11, :cond_1

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v8, v11}, Lmtopsdk/network/domain/Request$Builder;->env(I)Lmtopsdk/network/domain/Request$Builder;

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v8, v10}, Lmtopsdk/network/domain/Request$Builder;->env(I)Lmtopsdk/network/domain/Request$Builder;

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 58
    invoke-virtual {v8, v9}, Lmtopsdk/network/domain/Request$Builder;->env(I)Lmtopsdk/network/domain/Request$Builder;

    .line 72
    :cond_3
    :goto_0
    iget-object v9, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    .line 74
    iget-object v10, v0, Lmtopsdk/framework/domain/MtopContext;->protocolParams:Ljava/util/Map;

    .line 76
    iget-object v11, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    .line 79
    iget-object v12, v6, Lmtopsdk/mtop/global/MtopConfig;->mtopGlobalHeaders:Ljava/util/Map;

    .line 81
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    if-eqz v11, :cond_5

    .line 83
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 85
    invoke-interface {v11, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 86
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object v11, v12

    .line 95
    :cond_6
    iget-boolean v12, v6, Lmtopsdk/mtop/global/MtopConfig;->enableHeaderUrlEncode:Z

    invoke-virtual {v1, v10, v11, v12}, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;->buildRequestHeaders(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v11

    :try_start_0
    const-string v13, "api"

    .line 99
    invoke-interface {v10, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "v"

    .line 100
    invoke-interface {v10, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 101
    invoke-virtual {v8, v13}, Lmtopsdk/network/domain/Request$Builder;->api(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;

    .line 103
    invoke-virtual {v1, v0, v13, v14}, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;->buildBaseUrl(Lmtopsdk/framework/domain/MtopContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 104
    iput-object v13, v0, Lmtopsdk/framework/domain/MtopContext;->baseUrl:Ljava/lang/String;

    .line 107
    iget-object v14, v0, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1, v14, v10}, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;->addMtopSdkProperty(Lmtopsdk/mtop/intf/Mtop;Ljava/util/Map;)V

    .line 110
    iget-object v14, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    if-eqz v14, :cond_7

    iget-object v14, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 111
    iget-object v14, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 117
    :cond_7
    iget-object v6, v6, Lmtopsdk/mtop/global/MtopConfig;->mtopGlobalQuerys:Ljava/util/Map;

    .line 118
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 119
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 121
    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 122
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const-string v6, "content-type"

    .line 129
    invoke-interface {v11, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v6, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 133
    invoke-static {v10, v2}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->createParamQueryStr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_a

    .line 136
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_0
    :try_start_2
    const-string v2, "[createParamPostData]getPostData error"

    .line 138
    invoke-static {v4, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v12, 0x0

    .line 141
    :goto_4
    new-instance v2, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-direct {v2, v3, v12}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;-><init>(Ljava/lang/String;[B)V

    .line 143
    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Lmtopsdk/network/domain/Request$Builder;->method(Ljava/lang/String;Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    .line 144
    :try_start_3
    invoke-static {v13, v2}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v3

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    .line 148
    iget-object v3, v0, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v3, v3, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-nez v3, :cond_c

    iget-boolean v3, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    if-nez v3, :cond_c

    const-string v3, "cache-control"

    const-string v5, "no-cache"

    .line 149
    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_c
    iput-object v10, v0, Lmtopsdk/framework/domain/MtopContext;->queryParams:Ljava/util/Map;

    .line 152
    invoke-static {v13, v10}, Lmtopsdk/mtop/protocol/converter/util/NetworkConverterUtils;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_d

    .line 155
    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lmtopsdk/mtop/util/MtopStatistics;->domain:Ljava/lang/String;

    .line 156
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lmtopsdk/network/domain/Request$Builder;->url(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;

    .line 158
    :cond_d
    invoke-virtual {v8, v11}, Lmtopsdk/network/domain/Request$Builder;->headers(Ljava/util/Map;)Lmtopsdk/network/domain/Request$Builder;

    .line 159
    invoke-virtual {v8}, Lmtopsdk/network/domain/Request$Builder;->build()Lmtopsdk/network/domain/Request;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v12

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    :goto_6
    const-string v3, "[convert]convert Request failed!"

    .line 162
    invoke-static {v4, v7, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-object v2
.end method

.method protected abstract getHeaderConversionMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
