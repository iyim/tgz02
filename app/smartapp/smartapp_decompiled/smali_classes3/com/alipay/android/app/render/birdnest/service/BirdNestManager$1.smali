.class final Lcom/alipay/android/app/render/birdnest/service/BirdNestManager$1;
.super Ljava/lang/Object;
.source "BirdNestManager.java"

# interfaces
.implements Lcom/alipay/android/app/render/api/ICashierProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->getSDKService(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createWebViewAsync(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$CreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$CreateCallback;",
            ")V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public destroyWebView(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 40
    invoke-static {}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsync(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZLcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider$Callback;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadUrlWithWebView(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public openWebPage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
