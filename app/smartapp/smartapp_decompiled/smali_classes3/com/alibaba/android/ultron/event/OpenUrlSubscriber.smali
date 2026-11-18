.class public Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "OpenUrlSubscriber.java"


# static fields
.field private static final BIZ_CODE_UNKNOW:Ljava/lang/String; = "biz_unknow"

.field public static final KET_OPEN_URL_H5_OLD_COMPONENT:Ljava/lang/String; = "__oldComponent"

.field public static final KEY_H5_DATA_PREFIX:Ljava/lang/String; = "data="

.field public static final KEY_H5_POST_DATA:Ljava/lang/String; = "postdata"

.field public static final KEY_H5_QUERY_DATA:Ljava/lang/String; = "querydata"

.field public static final KEY_MAIN_BIZ_NAME:Ljava/lang/String; = "ultronTrade"

.field private static final KEY_OPEN_URL_FEATURE_TYPE:Ljava/lang/String; = "umbrella.event.openurl"

.field public static final KEY_OPEN_URL_H5_IS_POST_URL:Ljava/lang/String; = "isPostUrl"

.field private static final TAG:Ljava/lang/String; = "OpenUrlSubscriber"

.field public static final TYPE_OPEN_URL_H5:Ljava/lang/String; = "H5"

.field public static final TYPE_OPEN_URL_METHOD_GET:Ljava/lang/String; = "get"

.field public static final TYPE_OPEN_URL_METHOD_POST:Ljava/lang/String; = "post"

.field public static final TYPE_OPEN_URL_NATIVE:Ljava/lang/String; = "Native"

.field public static final TYPE_OPEN_URL_POPLAYER:Ljava/lang/String; = "PopLayer"

.field public static final TYPE_OPEN_URL_WEEX:Ljava/lang/String; = "Weex"


# instance fields
.field private COUNT_KB:I

.field protected currRequestCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->currRequestCode:I

    const v0, 0x32000

    .line 47
    iput v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->COUNT_KB:I

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->enableControlFrequency()V

    return-void
.end method

.method private addUmbrellaPoint(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->COUNT_KB:I

    if-ge v0, v1, :cond_1

    return-void

    .line 262
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent_size"

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "umbrella.event.openurl"

    const-string v3, "ultron.trade.open.url"

    const-string v4, "1.0"

    const-string v5, "ultronTrade"

    const-string v6, "biz_unknow"

    const-string v8, "FAIL_BINDER_TRANSATION"

    const-string v9, "intent has to many data in jump to native"

    .line 264
    invoke-static/range {v2 .. v9}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private assembleUrlParams(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_5

    .line 162
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 172
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_1
    return-object p1
.end method


# virtual methods
.method protected jumpToH5(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_0

    const-string v0, "__oldComponent"

    .line 120
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, "post"

    :cond_1
    const-string v1, "get"

    if-eqz v0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move-object p3, v1

    .line 130
    :cond_3
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 131
    invoke-static {}, Lcom/taobao/android/AliNavServiceFetcher;->getNavService()Lcom/taobao/android/AliNavServiceInterface;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    invoke-interface {p2, p3}, Lcom/taobao/android/AliNavServiceInterface;->from(Landroid/content/Context;)Lcom/taobao/android/AliNavInterface;

    move-result-object p2

    iget p3, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->currRequestCode:I

    invoke-interface {p2, p3}, Lcom/taobao/android/AliNavInterface;->forResult(I)Lcom/taobao/android/AliNavInterface;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/taobao/android/AliNavInterface;->toUri(Ljava/lang/String;)Z

    return-void

    .line 135
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x1

    if-eqz v0, :cond_5

    .line 138
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "postdata"

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x2

    .line 141
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "oldComponent encode \u5931\u8d25"

    aput-object v3, v1, v2

    aput-object v0, v1, p3

    const-string v2, "OpenUrlSubscriber"

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string v1, "isPostUrl"

    .line 145
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    :try_start_1
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 150
    :catch_1
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 152
    :goto_2
    invoke-static {}, Lcom/taobao/android/AliNavServiceFetcher;->getNavService()Lcom/taobao/android/AliNavServiceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/android/AliNavServiceInterface;->from(Landroid/content/Context;)Lcom/taobao/android/AliNavInterface;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/taobao/android/AliNavInterface;->createPostUri(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/net/Uri;

    move-result-object p1

    .line 153
    invoke-static {}, Lcom/taobao/android/AliNavServiceFetcher;->getNavService()Lcom/taobao/android/AliNavServiceInterface;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    invoke-interface {p3, v0}, Lcom/taobao/android/AliNavServiceInterface;->from(Landroid/content/Context;)Lcom/taobao/android/AliNavInterface;

    move-result-object p3

    iget v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->currRequestCode:I

    invoke-interface {p3, v0}, Lcom/taobao/android/AliNavInterface;->forResult(I)Lcom/taobao/android/AliNavInterface;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/taobao/android/AliNavInterface;->withExtras(Landroid/os/Bundle;)Lcom/taobao/android/AliNavInterface;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/taobao/android/AliNavInterface;->toUri(Landroid/net/Uri;)Z

    return-void
.end method

.method protected jumpToNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_7

    .line 181
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 189
    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 190
    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 191
    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 192
    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 193
    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 194
    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 195
    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 196
    :cond_5
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 197
    nop

    nop

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_6
    instance-of v4, v3, Ljava/io/Serializable;

    if-eqz v4, :cond_0

    .line 199
    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 203
    :cond_7
    invoke-static {}, Lcom/taobao/android/AliNavServiceFetcher;->getNavService()Lcom/taobao/android/AliNavServiceInterface;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 205
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Lcom/taobao/android/AliNavServiceInterface;->from(Landroid/content/Context;)Lcom/taobao/android/AliNavInterface;

    move-result-object p2

    iget v1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->currRequestCode:I

    invoke-interface {p2, v1}, Lcom/taobao/android/AliNavInterface;->forResult(I)Lcom/taobao/android/AliNavInterface;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/taobao/android/AliNavInterface;->withExtras(Landroid/os/Bundle;)Lcom/taobao/android/AliNavInterface;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/taobao/android/AliNavInterface;->toUri(Ljava/lang/String;)Z

    goto :goto_1

    .line 206
    :cond_8
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 207
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const-string v0, "com.taobao.android:alinavimp:xx.xx.xx \u6ca1\u6709\u5f15\u5165\uff0c\u8bf7\u5b9e\u73b0\u63a5\u53e3\u9002\u914d\u5bfc\u822a\u5e93"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_1
    return-void
.end method

.method protected jumpToPoplayer(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 224
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "poplayer://abcd?openType=directly"

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&uuid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&params="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{\"url\":\"%s\"}"

    new-array v3, p2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 232
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {}, Lcom/taobao/android/AliNavServiceFetcher;->getNavService()Lcom/taobao/android/AliNavServiceInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v2, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/taobao/android/AliNavServiceInterface;->from(Landroid/content/Context;)Lcom/taobao/android/AliNavInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/taobao/android/AliNavInterface;->toUri(Ljava/lang/String;)Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 238
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mContext:Landroid/content/Context;

    const-string v1, "com.taobao.android:alinavimp:xx.xx.xx \u6ca1\u6709\u5f15\u5165\uff0c\u8bf7\u5b9e\u73b0\u63a5\u53e3\u9002\u914d\u5bfc\u822a\u5e93"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    new-array p2, p2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpToPoplayer error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "OpenUrlSubscriber"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected jumpToWeex(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 13

    const-string v0, "OpenUrlSubscriber"

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 57
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 60
    :cond_0
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 64
    const-class v3, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->addUmbrellaPoint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v2

    :catch_1
    const-string v1, "onHandleEvent JSON.parseObject failed"

    .line 67
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 72
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getPageType()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getQueryParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 76
    new-array v7, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add queryParams before: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v0, v7}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, v2, v4}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->assembleUrlParams(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-array v4, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add queryParams after: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v4}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "H5"

    if-eqz v7, :cond_3

    move-object v1, v8

    :cond_3
    if-nez v2, :cond_4

    return-void

    .line 88
    :cond_4
    iget v7, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->currRequestCode:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->currRequestCode:I

    .line 89
    iget v7, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->currRequestCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "activityRequestCode"

    invoke-virtual {p1, v9, v7}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    const/4 v7, -0x1

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x7558c3c9

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v9, v10, :cond_8

    const/16 v10, 0x8ed

    if-eq v9, v10, :cond_7

    const v8, 0x291421

    if-eq v9, v8, :cond_6

    const v8, 0x29ad61a0

    if-eq v9, v8, :cond_5

    goto :goto_1

    :cond_5
    const-string v8, "PopLayer"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x3

    goto :goto_1

    :cond_6
    const-string v8, "Weex"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x2

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const-string v8, "Native"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x0

    :cond_9
    :goto_1
    if-eqz v7, :cond_d

    if-eq v7, v6, :cond_c

    if-eq v7, v12, :cond_b

    if-eq v7, v11, :cond_a

    goto :goto_2

    .line 108
    :cond_a
    new-array v1, v12, [Ljava/lang/String;

    const-string v3, "\u8df3\u8f6c\u5230poplayer\u9875\u9762"

    aput-object v3, v1, v5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v2, v4}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->jumpToPoplayer(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2

    .line 103
    :cond_b
    new-array v1, v12, [Ljava/lang/String;

    const-string v3, "\u8df3\u8f6c\u5230weex\u9875\u9762"

    aput-object v3, v1, v5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v2, v4}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->jumpToWeex(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2

    .line 97
    :cond_c
    new-array v1, v12, [Ljava/lang/String;

    const-string v7, "\u8df3\u8f6c\u5230h5\u9875\u9762"

    aput-object v7, v1, v5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v2, v4, v0}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->jumpToH5(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_d
    new-array v1, v12, [Ljava/lang/String;

    const-string v3, "\u8df3\u8f6c\u5230native\u9875\u9762"

    aput-object v3, v1, v5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v2, v4}, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->jumpToNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->setCurrentEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    :cond_e
    :goto_3
    return-void
.end method
