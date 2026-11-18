.class public Lcom/taobao/android/tbsku/model/IntentModel;
.super Ljava/lang/Object;
.source "IntentModel.java"


# static fields
.field public static final ADDCART:Ljava/lang/String; = "ADDCART"

.field public static final ADDCART_AND_BUYNOW:Ljava/lang/String; = "ADDCART_AND_BUYNOW"

.field public static final BUYNOW:Ljava/lang/String; = "BUYNOW"

.field public static final CONFIRM:Ljava/lang/String; = "CONFIRM"


# instance fields
.field public isBroken:Z

.field public mActivityResultCode:I

.field public mBottomBarMode:Ljava/lang/String;

.field public mDowngradeStr:Ljava/lang/String;

.field public mExtInput:Ljava/lang/String;

.field public mIgnoreToast:Ljava/lang/String;

.field public mItemId:Ljava/lang/String;

.field public mMsg:Ljava/lang/String;

.field public mQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSkuId:Ljava/lang/String;

.field public mTransparentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUniqueId:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 12

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mQueryMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mTransparentMap:Ljava/util/Map;

    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u5546\u54c1\u4fe1\u606f\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 141
    iput-boolean v2, p0, Lcom/taobao/android/tbsku/model/IntentModel;->isBroken:Z

    .line 142
    iput v1, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mActivityResultCode:I

    .line 143
    iput-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mMsg:Ljava/lang/String;

    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    .line 149
    iput-boolean v2, p0, Lcom/taobao/android/tbsku/model/IntentModel;->isBroken:Z

    .line 150
    iput v1, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mActivityResultCode:I

    .line 151
    iput-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mMsg:Ljava/lang/String;

    return-void

    .line 155
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mUrl:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 160
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 161
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 162
    iget-object v7, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mQueryMap:Ljava/util/Map;

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    const-string v5, "transparent_key"

    .line 168
    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ","

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 172
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 173
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 176
    :cond_3
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 184
    :catch_0
    :cond_4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 186
    :try_start_1
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :catch_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 190
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "uniqueId"

    const-string v8, "bottomMode"

    const-string v9, "skuId"

    const-string v10, "itemId"

    if-eqz v6, :cond_d

    .line 191
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v11, 0x0

    .line 194
    :try_start_2
    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :catch_2
    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 198
    iput-object v11, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    .line 201
    :cond_6
    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 202
    iput-object v11, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mSkuId:Ljava/lang/String;

    .line 205
    :cond_7
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 206
    iput-object v11, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    .line 209
    :cond_8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 210
    iput-object v11, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mUniqueId:Ljava/lang/String;

    :cond_9
    const-string v7, "extInput"

    .line 213
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 214
    iput-object v11, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mExtInput:Ljava/lang/String;

    :cond_a
    const-string v7, "downgradeStr"

    .line 217
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 218
    iput-object v11, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mDowngradeStr:Ljava/lang/String;

    :cond_b
    const-string v7, "ignore_toast"

    .line 221
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 222
    iput-object v11, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mIgnoreToast:Ljava/lang/String;

    .line 226
    :cond_c
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 227
    iget-object v7, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mQueryMap:Ljava/util/Map;

    invoke-interface {v7, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v7, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mTransparentMap:Ljava/util/Map;

    invoke-interface {v7, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 233
    :cond_d
    iget-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 234
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    .line 237
    :cond_e
    iget-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mSkuId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 238
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mSkuId:Ljava/lang/String;

    .line 241
    :cond_f
    iget-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 242
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    .line 245
    :cond_10
    iget-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mUniqueId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 246
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mUniqueId:Ljava/lang/String;

    .line 249
    :cond_11
    iget-object p1, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 250
    iput-boolean v2, p0, Lcom/taobao/android/tbsku/model/IntentModel;->isBroken:Z

    .line 251
    iput v1, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mActivityResultCode:I

    .line 252
    iput-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mMsg:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method private appendOutExtInput(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    .line 300
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mExtInput:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mExtInput:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 313
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    return-object p1
.end method

.method private static convertUrl2Intent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/taobao/android/tbsku/model/IntentModel;->extractItemIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://sku.taobao.com/index.htm?itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static extractFromNormalCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "[?|&]item_id=(\\d+)"

    const-string v1, "[?|&]itemId=(\\d+)"

    const-string v2, "[?|&]item_num_id=(\\d+)"

    const-string v3, "[?|&]itemNumId=(\\d+)"

    const-string v4, "[?|&]id=(\\d+)"

    .line 107
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 115
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 117
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    .line 119
    invoke-virtual {v3, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractFromSpecialCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "//a\\.(?:m|wapa|waptest)\\.(?:taobao|tmall)\\.com/i(\\d+)\\.htm"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "//a\\.(?:m|wapa|waptest)\\.(?:taobao|tmall)\\.com.*[?|&](?:id|item_id)=(\\d+)"

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractFromWholeNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractItemIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    invoke-static {p0}, Lcom/taobao/android/tbsku/model/IntentModel;->extractFromSpecialCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/taobao/android/tbsku/model/IntentModel;->extractFromNormalCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 78
    :cond_1
    invoke-static {p0}, Lcom/taobao/android/tbsku/model/IntentModel;->extractFromWholeNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExtInputData()Lcom/alibaba/fastjson/JSONObject;
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    const-string v1, "ADDCART_AND_BUYNOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "CONFIRM"

    const-string v3, "CONFIRM_BUYNOW"

    const-string v4, "CONFIRM_ADDCART"

    const-string v5, "BUYNOW"

    const-string v6, "ADDCART"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v6

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v5

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, v4

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, v3

    goto :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mBottomBarMode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v1, v2

    .line 279
    :cond_5
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 281
    iget-object v2, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mSkuId:Ljava/lang/String;

    const-string v3, "skuId"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "bottom_bar_mode"

    .line 284
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sku_bottom"

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 288
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 289
    iget-object v3, p0, Lcom/taobao/android/tbsku/model/IntentModel;->mTransparentMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    const-string v3, "transparent_map"

    .line 290
    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "storedData"

    .line 291
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-direct {p0, v0}, Lcom/taobao/android/tbsku/model/IntentModel;->appendOutExtInput(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method
