.class Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow$1;
.super Ljava/lang/Object;
.source "DialogStorageLow.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftOpenrationClick()V
    .locals 2

    const-string v0, "Sample"

    const-string v1, "1"

    .line 32
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onRightOpenrationClick()V
    .locals 2

    const-string v0, "Sample"

    const-string v1, "2"

    .line 37
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow$1;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;->dismiss()V

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openCleaner()V

    return-void
.end method
