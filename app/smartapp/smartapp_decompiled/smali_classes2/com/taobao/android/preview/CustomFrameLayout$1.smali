.class Lcom/taobao/android/preview/CustomFrameLayout$1;
.super Ljava/lang/Object;
.source "CustomFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/preview/CustomFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/preview/CustomFrameLayout;


# direct methods
.method constructor <init>(Lcom/taobao/android/preview/CustomFrameLayout;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/taobao/android/preview/CustomFrameLayout$1;->this$0:Lcom/taobao/android/preview/CustomFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/taobao/android/preview/CustomFrameLayout$1;->this$0:Lcom/taobao/android/preview/CustomFrameLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/android/preview/CustomFrameLayout;->isConsumed:Z

    .line 77
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/taobao/android/preview/CustomFrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 78
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
