.class public Lcom/airbnb/lottie/LottieComposition$Factory;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/Layer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/airbnb/lottie/Layer;",
            ">;",
            "Lcom/airbnb/lottie/Layer;",
            ")V"
        }
    .end annotation

    .line 248
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 114
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 3

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2

    .line 126
    new-instance v0, Lcom/airbnb/lottie/FileCompositionLoader;

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/FileCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 128
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p0, p2}, Lcom/airbnb/lottie/FileCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method static fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 3

    .line 157
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 158
    new-array v0, v0, [B

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 161
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load JSON."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find file."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :goto_0
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static fromJson(Landroid/content/res/Resources;Lorg/json/JSONObject;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2

    .line 148
    new-instance v0, Lcom/airbnb/lottie/JsonCompositionLoader;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/JsonCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 149
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p0, p2}, Lcom/airbnb/lottie/JsonCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 12

    .line 176
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v7, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 p0, -0x1

    const-string/jumbo v0, "w"

    .line 177
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "h"

    .line 178
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, p0, :cond_0

    if-eq v1, p0, :cond_0

    int-to-float p0, v0

    mul-float p0, p0, v7

    float-to-int p0, p0

    int-to-float v0, v1

    mul-float v0, v0, v7

    float-to-int v0, v0

    .line 183
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move-object v1, p0

    :goto_0
    const-wide/16 v3, 0x0

    const-string p0, "ip"

    .line 186
    invoke-virtual {p1, p0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p0, "op"

    .line 187
    invoke-virtual {p1, p0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string p0, "fr"

    .line 188
    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 189
    new-instance v10, Lcom/airbnb/lottie/LottieComposition;

    const/4 v11, 0x0

    move-object v0, v10

    move-wide v2, v5

    move-wide v4, v8

    move v6, p0

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJIFLcom/airbnb/lottie/LottieComposition$1;)V

    const-string p0, "assets"

    .line 191
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 192
    invoke-static {p0, v10}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 193
    invoke-static {p0, v10}, Lcom/airbnb/lottie/LottieComposition$Factory;->parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 194
    invoke-static {p1, v10}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    return-object v10
.end method

.method private static parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 238
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "p"

    .line 239
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    invoke-static {v2}, Lcom/airbnb/lottie/LottieImageAsset$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v2

    .line 243
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5

    const-string v0, "layers"

    .line 199
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/airbnb/lottie/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;

    move-result-object v2

    .line 203
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/airbnb/lottie/LottieComposition$Factory;->addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/Layer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 11
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 214
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "layers"

    .line 215
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 219
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v6}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    const/4 v7, 0x0

    .line 221
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 222
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/airbnb/lottie/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;

    move-result-object v8

    .line 223
    invoke-virtual {v8}, Lcom/airbnb/lottie/Layer;->getId()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10, v8}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 224
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "id"

    .line 226
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
