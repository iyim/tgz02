.class Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity$1;
.super Landroid/database/ContentObserver;
.source "ShotcutSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;Landroid/os/Handler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "ShotcutSettingActivity"

    const-string v0, "mShotCutContentObserver onChange"

    .line 75
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;->access$000(Lcom/alibaba/ailabs/childmode/ui/page/ShotcutSettingActivity;)V

    return-void
.end method
