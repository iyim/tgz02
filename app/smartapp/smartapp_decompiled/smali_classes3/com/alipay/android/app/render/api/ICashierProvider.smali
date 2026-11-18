.class public interface abstract Lcom/alipay/android/app/render/api/ICashierProvider;
.super Ljava/lang/Object;
.source "ICashierProvider.java"


# virtual methods
.method public abstract createWebView(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;)Landroid/view/View;
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
.end method

.method public abstract createWebViewAsync(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$LoadUrlListener;Ljava/util/Map;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider$CreateCallback;)V
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
.end method

.method public abstract destroyWebView(Landroid/view/View;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getResourceAsync(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZLcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider$Callback;Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract loadData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrlWithWebView(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract openWebPage(Ljava/lang/String;Landroid/content/Context;)V
.end method
