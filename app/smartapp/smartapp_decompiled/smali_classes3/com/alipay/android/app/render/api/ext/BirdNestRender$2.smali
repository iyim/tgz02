.class Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;
.super Ljava/lang/Object;
.source "BirdNestRender.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$TemplateFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/api/ext/BirdNestRender;->destroyView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;->this$0:Lcom/alipay/android/app/render/api/ext/BirdNestRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p2, "QUICKPAY"

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
