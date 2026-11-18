.class Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$6;
.super Ljava/lang/Object;
.source "QrcodePayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$6;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 894
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
