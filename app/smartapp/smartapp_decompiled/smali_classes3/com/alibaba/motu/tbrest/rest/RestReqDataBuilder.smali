.class public Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;
.super Ljava/lang/Object;
.source "RestReqDataBuilder.java"


# static fields
.field private static s_session_start_timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->s_session_start_timestamp:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static _fixVariableValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 32
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "-"

    return-object p0

    :cond_0
    if-eqz p0, :cond_4

    const-string v0, ""

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    .line 41
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 42
    aget-char v2, p0, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    invoke-static {}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->values()[Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "||"

    const/4 v6, 0x0

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    .line 188
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {v7}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 194
    invoke-virtual {v7}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-virtual {v7}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_1
    invoke-static {v6}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_2
    :goto_1
    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v1}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v1}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v1}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    .line 209
    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 211
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 214
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v6

    :goto_4
    const-string v8, "StackTrace=====>"

    const-string v9, "="

    const-string v10, "StackTrace"

    if-eqz v1, :cond_6

    .line 218
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 221
    :cond_5
    invoke-static {v4}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    const/4 v1, 0x0

    goto :goto_3

    .line 226
    :cond_6
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, ","

    if-eqz v10, :cond_7

    .line 227
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 229
    :cond_7
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 235
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 237
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    return-object p0
.end method

.method public static buildMonkeyPostReqDataObj(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "-"

    const/4 v2, 0x0

    if-nez p5, :cond_0

    return-object v2

    .line 334
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "get utdid failure, so build report failure, now return"

    .line 336
    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v2

    .line 340
    :cond_1
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    .line 344
    aget-object v5, v4, v5

    const-string v6, "2G/3G"

    .line 345
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 346
    aget-object v4, v4, v7

    goto :goto_0

    :cond_2
    const-string v4, "Unknown"

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v4

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v8, p2, v6

    if-lez v8, :cond_4

    move-wide/from16 v6, p2

    goto :goto_1

    .line 352
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 353
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 354
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-static/range {p4 .. p4}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 357
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 358
    invoke-static/range {p6 .. p6}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 359
    invoke-static/range {p7 .. p7}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 360
    invoke-static/range {p8 .. p8}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 361
    invoke-static/range {p9 .. p9}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.0.1"

    .line 363
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v15

    iget-object v15, v15, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 364
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    sget-object v16, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 p2, v13

    invoke-static/range {v16 .. v16}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 366
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p3, v12

    invoke-static/range {v16 .. v16}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p4, v11

    .line 367
    invoke-static {v15}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 368
    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 p5, v10

    invoke-static/range {v16 .. v16}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 369
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getResolution()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-static/range {v16 .. v16}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v7

    .line 370
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-static {v5}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-static {v4}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v8

    .line 373
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v6

    .line 374
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v1

    .line 375
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/motu/tbrest/SendService;->channel:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 p6, v6

    .line 377
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/motu/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p7, v6

    .line 378
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/motu/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getCountry()Ljava/lang/String;

    move-result-object v21

    move-object/from16 p8, v6

    invoke-static/range {v21 .. v21}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 p9, v6

    invoke-static/range {v21 .. v21}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    .line 382
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/motu/tbrest/SendService;->appId:Ljava/lang/String;

    const-string v22, "Android"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v23, v8

    const-string v8, "aliyunos"

    if-eqz v6, :cond_5

    .line 385
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v8, v22

    .line 388
    :goto_2
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    const-string v6, "mini"

    move-object/from16 v24, v6

    const-string v6, "1.0"

    move-object/from16 v25, v6

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    sget-wide v4, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->s_session_start_timestamp:J

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-static {v3}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "||"

    .line 406
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, v26

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, v27

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, v23

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v6, p6

    .line 419
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v7, p7

    .line 420
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v7, p8

    .line 421
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v7, v20

    .line 422
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, p9

    .line 423
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v21

    .line 424
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v22

    .line 426
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v24

    .line 427
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v25

    .line 428
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, v19

    .line 435
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, v18

    .line 436
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, v16

    .line 437
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, v17

    .line 438
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, p5

    .line 439
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, p4

    .line 440
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, p3

    .line 441
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, p2

    .line 442
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 446
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v5, "stm_x"

    .line 447
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;

    invoke-direct {v0}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;-><init>()V

    const/16 v20, 0x0

    const-string v27, ""

    move-object/from16 v19, p0

    move-object/from16 v21, v4

    move-object/from16 v22, p1

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v28, v3

    .line 450
    invoke-static/range {v19 .. v28}, Lcom/alibaba/motu/tbrest/rest/RestUrlWrapper;->getSignedTransferUrl(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->setReqUrl(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, v4}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->setPostReqData(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "UTRestAPI buildTracePostReqDataObj catch!"

    .line 458
    invoke-static {v1, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static buildPostRequestMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "stm_x"

    .line 260
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {v0}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->buildPostRequestMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static buildPostRequestMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 269
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 274
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 277
    invoke-static {v3}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v5, :cond_1

    .line 282
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 283
    :try_start_2
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v7, "UTF-8"

    .line 284
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 285
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 286
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 288
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 289
    invoke-static {v4}, Lcom/alibaba/motu/tbrest/utils/RC4;->rc4([B)[B

    move-result-object v4

    .line 291
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object v6, v0

    goto :goto_1

    :catch_2
    move-object v5, v0

    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 294
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :cond_3
    return-object v1

    :catch_3
    move-exception p0

    const-string v1, "buildPostRequestMap"

    .line 305
    invoke-static {v1, p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static buildRequestData(JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v1, ""

    const-string v0, "-"

    const/4 v2, 0x0

    if-nez p3, :cond_0

    return-object v2

    .line 64
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "get utdid failure, so build report failure, now return"

    .line 66
    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v2

    .line 70
    :cond_1
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    .line 74
    aget-object v2, v4, v2

    const-string v5, "2G/3G"

    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 76
    aget-object v4, v4, v6

    goto :goto_0

    :cond_2
    const-string v4, "Unknown"

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v7, p0, v5

    if-lez v7, :cond_4

    move-wide/from16 v5, p0

    goto :goto_1

    .line 82
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 83
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static/range {p2 .. p2}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-static/range {p4 .. p4}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-static/range {p5 .. p5}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-static/range {p6 .. p6}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 90
    invoke-static/range {p7 .. p7}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v12

    iget-object v12, v12, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 93
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 94
    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v14}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 95
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-static {v12}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v15}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 98
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getResolution()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p0, v11

    invoke-static/range {v16 .. v16}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 p1, v10

    .line 99
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v10

    iget-object v10, v10, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-static {v2}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v4}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 p2, v9

    .line 102
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v9

    iget-object v9, v9, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    invoke-static {v9}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 p3, v8

    .line 103
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v7

    .line 104
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/motu/tbrest/SendService;->channel:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v6

    .line 106
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/motu/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v5

    .line 107
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/motu/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/alibaba/motu/tbrest/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 p4, v0

    .line 111
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/motu/tbrest/SendService;->appId:Ljava/lang/String;

    const-string v19, "a"

    .line 115
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 p5, v5

    invoke-static/range {v21 .. v21}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 p6, v5

    const-string v5, "mini"

    move-object/from16 p7, v5

    const-string v5, "1.0"

    move-object/from16 v21, v5

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v8

    move-object/from16 v22, v9

    sget-wide v8, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->s_session_start_timestamp:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    invoke-static {v3}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v1}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    if-eqz v0, :cond_5

    const-string v5, "aliyunos"

    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v19, "y"

    :cond_5
    move-object/from16 v0, v19

    .line 134
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 135
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMEI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMSI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->BRAND:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->DEVICE_MODEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESOLUTION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CARRIER:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v8, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v8}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS_SUBTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CHANNEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPKEY:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v22

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v23

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p5

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v20

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LANGUAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, p4

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OSVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p6

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->s_session_start_timestamp:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->UTDID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE4:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE5:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVES:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RECORD_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->PAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->EVENTID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG1:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v0}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v5}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UTRestAPI buildTracePostReqDataObj catch!"

    .line 172
    invoke-static {v2, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
