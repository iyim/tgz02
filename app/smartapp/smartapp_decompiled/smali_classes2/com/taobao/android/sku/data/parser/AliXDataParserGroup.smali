.class public Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;
.super Ljava/lang/Object;
.source "AliXDataParserGroup.java"


# instance fields
.field private parserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/sku/data/parser/IAliXSkuDataParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;->parserMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDataParser(Ljava/lang/String;Lcom/taobao/android/sku/data/parser/IAliXSkuDataParser;)V
    .locals 1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;->parserMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getParserMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/sku/data/parser/IAliXSkuDataParser;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;->parserMap:Ljava/util/Map;

    return-object v0
.end method
