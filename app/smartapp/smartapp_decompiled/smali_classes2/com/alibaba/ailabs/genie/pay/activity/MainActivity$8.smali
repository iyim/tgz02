.class Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$8;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "genie://com.alibaba.ailabs.genie.pay/payApi"

    .line 116
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.alibaba.ailabs.genie.smartapp"

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "{\n  \"type\": \"1\",\n  \"product\": \"Audio\",\n  \"payParam\": {\n    \"source\": \"ximalayav2\",\n    \"sellType\": \"1\",\n    \"botId\": \"10\",\n    \"memberId\": \"123321\",\n    \"albumRawId\": \"242039\",\n    \"contentRawId\": \"1424715\",\n    \"pageNum\": \"1\",\n    \"pageSize\": \"10\",\n    \"title\": \"\u8d2d\u4e70\u5546\u54c1\u6807\u9898\",\n    \"subTitle\": \"\u5f00\u59cb\u8d2d\u4e70\",\n    \"showRawId\": \"1536741744963460\",\n    \"ext\": \" \"\n  },\n  \"appInfo\": {\n    \"appId\": \"123\",\n    \"pageId\": \"456\",\n    \"version\": \"1\",\n    \"ext\": \"xxx\"\n  }\n}"

    const-string v1, "payParam"

    .line 143
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 144
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$8;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;

    const/16 v1, 0x3e9

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
