.class public Lcom/alipay/android/app/render/birdnest/provider/CashierUiVideoProvider;
.super Ljava/lang/Object;
.source "CashierUiVideoProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createVideoView(Landroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider$VideoCallback;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroyVideoView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getAttribute(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadUri(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public pause(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public play(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public resume(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAttribute(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
