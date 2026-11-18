.class public Lcom/alipay/android/app/render/birdnest/provider/CashierResourceProvider;
.super Ljava/lang/Object;
.source "CashierResourceProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierResourceProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-void
.end method


# virtual methods
.method public getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string p3, "/"

    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const-string v0, "drawable"

    .line 26
    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    .line 27
    array-length p2, p3

    const/4 p4, 0x0

    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 28
    aget-object p2, p3, v1

    goto :goto_0

    .line 29
    :cond_0
    array-length p2, p3

    if-le p2, v0, :cond_1

    .line 30
    aget-object p2, p3, v0

    goto :goto_0

    .line 32
    :cond_1
    aget-object p2, p3, p4

    :goto_0
    if-eqz p2, :cond_2

    const-string p3, "."

    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_2

    .line 37
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 39
    :cond_2
    invoke-static {p2}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getDrawableId(Ljava/lang/String;)I

    move-result p2

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 47
    array-length p4, p3

    if-le p4, v0, :cond_4

    .line 48
    aget-object p2, p3, v0

    .line 52
    :cond_4
    invoke-static {p2, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateAssetsStorage;->readAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResourceAsync(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZLcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider$Callback;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 12

    move-object v0, p0

    .line 63
    iget-object v1, v0, Lcom/alipay/android/app/render/birdnest/provider/CashierResourceProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/alipay/android/app/render/api/ICashierProvider;->getResourceAsync(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZLcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider$Callback;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
