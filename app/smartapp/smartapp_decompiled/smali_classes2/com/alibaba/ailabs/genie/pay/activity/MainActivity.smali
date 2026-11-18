.class public Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static final PAY_PARAM:Ljava/lang/String; = "payParam"

.field public static final PAY_RESULT:Ljava/lang/String; = "payResult"

.field public static final REQUEST_CODE_GENIE_PAY:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->pay()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->payByNotMember()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->payByNotMemberWithOneContent()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->payNative()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->payByNotMemberWithOneContentNative()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->payByNotMemberNative()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private pay()V
    .locals 3

    const-string v0, "{\n  \"type\": \"1\",\n  \"product\": \"Audio\",\n  \"payParam\": {\n    \"source\": \"ximalayav2\",\n    \"sellType\": \"1\",\n    \"botId\": \"10\",\n    \"memberId\": \"123321\",\n    \"albumRawId\": \"242039\",\n    \"contentRawId\": \"1424715\",\n    \"pageNum\": \"1\",\n    \"pageSize\": \"10\",\n    \"title\": \"\u8d2d\u4e70\u5546\u54c1\u6807\u9898\",\n    \"subTitle\": \"\u5f00\u59cb\u8d2d\u4e70\",\n    \"showRawId\": \"1536741744963460\",\n    \"ext\": \" \"\n  },\n  \"appInfo\": {\n    \"appId\": \"123\",\n    \"pageId\": \"456\",\n    \"version\": \"1\",\n    \"ext\": \"xxx\"\n  }\n}"

    .line 177
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$9;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    return-void
.end method

.method private payByNotMember()V
    .locals 3

    const-string v0, "{\n  \"type\": \"0\",\n  \"product\": \"Audio\",\n  \"payParam\": {\n    \"source\": \"qingting\",\n    \"sellType\": \"2\",\n    \"botId\": \"31683\",\n    \"memberId\": \"353535\",\n    \"albumRawId\": \"281083\",\n    \"contentRawId\": \"1424715\",\n    \"pageNum\": \"1\",\n    \"pageSize\": \"10\",\n    \"title\": \"\u975e\u4f1a\u5458\u8d2d\u4e70\u5546\u54c1\u6807\u9898\",\n    \"subTitle\": \"\u975e\u4f1a\u5458\u5f00\u59cb\u8d2d\u4e70\",\n    \"showRawId\": \"1536741744963460\",\n    \"ext\": \" \"\n  },\n  \"appInfo\": {\n    \"appId\": \"123\",\n    \"pageId\": \"456\",\n    \"version\": \"1\",\n    \"ext\": \"xxx\"\n  }\n}"

    .line 304
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 306
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$13;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$13;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    return-void
.end method

.method private payByNotMemberNative()V
    .locals 3

    .line 315
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;-><init>()V

    const-string v1, "0"

    .line 316
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->setType(Ljava/lang/String;)V

    .line 317
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;-><init>()V

    const-string v2, "2"

    .line 318
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSellType(Ljava/lang/String;)V

    const-string v2, "qingting"

    .line 319
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSource(Ljava/lang/String;)V

    const-string v2, "353535"

    .line 320
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setMemberId(Ljava/lang/String;)V

    const-string v2, "281083"

    .line 321
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setAlbumRawId(Ljava/lang/String;)V

    const-string v2, "31683"

    .line 322
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setBotId(Ljava/lang/String;)V

    const-string v2, "1424715"

    .line 323
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setContentRawId(Ljava/lang/String;)V

    const-string v2, "1"

    .line 324
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setPageNum(Ljava/lang/String;)V

    const-string v2, "10"

    .line 325
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setPageSize(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setBotId(Ljava/lang/String;)V

    const-string v2, "\u975e\u4f1a\u5458\u8d2d\u4e70\u4e13\u8f91\u6807\u9898"

    .line 327
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setTitle(Ljava/lang/String;)V

    const-string v2, "\u975e\u4f1a\u5458\u8d2d\u4e70\u4e13\u8f91\u8bf4\u660e"

    .line 328
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSubTitle(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->setPayParam(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;)V

    .line 332
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$14;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    return-void
.end method

.method private payByNotMemberWithOneContent()V
    .locals 3

    const-string v0, "{\n  \"type\": \"0\",\n  \"product\": \"Audio\",\n  \"payParam\": {\n    \"source\": \"qingting\",\n    \"sellType\": \"1\",\n    \"botId\": \"31683\",\n    \"memberId\": \"353535\",\n    \"albumRawId\": \"270997\",\n    \"contentRawId\": \"9966212\",\n    \"pageNum\": \"1\",\n    \"pageSize\": \"10\",\n    \"title\": \"\u975e\u4f1a\u5458\u8d2d\u4e70\u5355\u54c1\u4e13\u8f91\u6807\u9898\",\n    \"subTitle\": \"\u975e\u4f1a\u5458\u8d2d\u4e70\u5355\u54c1\u4e13\u8f91\u8bf4\u660e\",\n    \"ext\": \" \"\n  },\n  \"appInfo\": {\n    \"appId\": \"123\",\n    \"pageId\": \"456\",\n    \"version\": \"1\",\n    \"ext\": \"xxx\"\n  }\n}"

    .line 237
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$11;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    return-void
.end method

.method private payByNotMemberWithOneContentNative()V
    .locals 4

    .line 248
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;-><init>()V

    const-string v1, "0"

    .line 249
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->setType(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;-><init>()V

    const-string v2, "1"

    .line 251
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSellType(Ljava/lang/String;)V

    const-string v3, "qingting"

    .line 252
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSource(Ljava/lang/String;)V

    const-string v3, "353535"

    .line 253
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setMemberId(Ljava/lang/String;)V

    const-string v3, "270997"

    .line 254
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setAlbumRawId(Ljava/lang/String;)V

    const-string v3, "9966212"

    .line 255
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setContentRawId(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setPageNum(Ljava/lang/String;)V

    const-string v2, "10"

    .line 257
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setPageSize(Ljava/lang/String;)V

    const-string v2, "31683"

    .line 258
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setBotId(Ljava/lang/String;)V

    const-string v2, "\u975e\u4f1a\u5458\u8d2d\u4e70\u5355\u54c1\u4e13\u8f91\u6807\u9898"

    .line 259
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setTitle(Ljava/lang/String;)V

    const-string v2, "\u975e\u4f1a\u5458\u8d2d\u4e70\u5355\u54c1\u4e13\u8f91\u8bf4\u660e"

    .line 260
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSubTitle(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->setPayParam(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;)V

    .line 264
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$12;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$12;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    return-void
.end method

.method private payNative()V
    .locals 3

    .line 188
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;-><init>()V

    const-string v1, "1"

    .line 189
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->setType(Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;-><init>()V

    const-string v2, "ximalayav2"

    .line 191
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSource(Ljava/lang/String;)V

    const-string v2, "123321"

    .line 192
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setMemberId(Ljava/lang/String;)V

    const-string v2, "10"

    .line 193
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setBotId(Ljava/lang/String;)V

    const-string v2, "\u4ec5\u4f9b\u4f1a\u5458\u8d2d\u4e70"

    .line 194
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setTitle(Ljava/lang/String;)V

    const-string v2, "\u8bf7\u5f00\u901a\u4f1a\u5458\u540e\u7ee7\u7eed\u6536\u542c\u7cbe\u5f69\u5185\u5bb9"

    .line 195
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->setSubTitle(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->setPayParam(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;)V

    .line 199
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$10;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 347
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 349
    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    .line 348
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "payResult"

    .line 354
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 355
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->init(Landroid/app/Application;)V

    .line 35
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_activity_main:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->setContentView(I)V

    .line 41
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->testBtn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$1;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->isMemberTestBtn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$2;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->isNotMemberTestBtn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$3;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->isNotMemberOneTestBtn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$4;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->isMemberNativeTestBtn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$5;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->isNotMemberOneNativeTestBtn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$6;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->isNotMemberNativeTestBtn:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$7;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->isMemberTestBtnByActivity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$8;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
