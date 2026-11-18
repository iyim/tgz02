.class public Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private appinfo:Lcom/alibaba/fastjson/JSONObject;

.field private mamount:Landroid/widget/EditText;

.field private mappId:Landroid/widget/EditText;

.field private moutItemId:Landroid/widget/EditText;

.field private moutItemName:Landroid/widget/EditText;

.field private moutOrderId:Landroid/widget/EditText;

.field private mpriKey:Landroid/widget/EditText;

.field private msellerId:Landroid/widget/EditText;

.field private qrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->appinfo:Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;)Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->qrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p12}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->qrcode(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private qrcode(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sellerId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 109
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "amount"

    invoke-virtual {v1, p5, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "appId"

    .line 110
    invoke-virtual {v1, p4, p6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "outItemId"

    .line 111
    invoke-virtual {v1, p4, p7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "outItemName"

    .line 112
    invoke-virtual {v1, p4, p8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "outOrderId"

    .line 113
    invoke-virtual {v1, p4, p9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "payExpireTime"

    invoke-virtual {v1, p5, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "content"

    .line 117
    invoke-virtual {v0, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sign"

    .line 129
    invoke-virtual {v0, p2, p12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "genie://com.alibaba.ailabs.genie.commonpay/qrcode"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "data"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p3, 0x4d2

    .line 135
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    const-string v0, "isPaySuccess"

    .line 143
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "paySuccessData"

    .line 144
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payErrorCode"

    .line 145
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "payErrorMsg"

    .line 146
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 147
    sget-object v1, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qrcode, isPaySuccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; paySuccessDataJson="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; payErrorCode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; payErrorMsg="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->setContentView(I)V

    .line 32
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->sellerId:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->msellerId:Landroid/widget/EditText;

    .line 33
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->amount:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->mamount:Landroid/widget/EditText;

    .line 34
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->appId:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->mappId:Landroid/widget/EditText;

    .line 35
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->outItemId:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->moutItemId:Landroid/widget/EditText;

    .line 36
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->outItemName:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->moutItemName:Landroid/widget/EditText;

    .line 37
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->outOrderId:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->moutOrderId:Landroid/widget/EditText;

    .line 38
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->priKey:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->mpriKey:Landroid/widget/EditText;

    .line 40
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->appinfo:Lcom/alibaba/fastjson/JSONObject;

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->appinfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "name"

    const-string v1, "test"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance p1, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->qrcodePayResultCallback:Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->msellerId:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->mamount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->mappId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->moutItemId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->moutItemName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->moutOrderId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->mpriKey:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    sget v0, Lcom/alibaba/ailabs/genie/commonpay/R$id;->testBtn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 68
    new-instance v13, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;-><init>(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/commonpay/R$id;->testApkBtn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 86
    new-instance v12, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;-><init>(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
