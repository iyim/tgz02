.class final Lcom/alibaba/ailabs/avesdk/AVEClientSdk$1;
.super Ljava/lang/Object;
.source "AVEClientSdk.java"

# interfaces
.implements Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/ailabs/acamera/IACameraCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/acamera/IACameraCallback;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClientSdk$1;->val$callback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventCallback(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    const-string v0, "onServiceConnected"

    .line 19
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AVEClientSdk"

    if-eqz v1, :cond_0

    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClientSdk$1;->val$callback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/acamera/IACameraCallback;->callback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "onServiceDisconnected"

    .line 26
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClientSdk$1;->val$callback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/acamera/IACameraCallback;->callback(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
