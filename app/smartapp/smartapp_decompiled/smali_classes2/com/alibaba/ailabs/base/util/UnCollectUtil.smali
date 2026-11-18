.class public Lcom/alibaba/ailabs/base/util/UnCollectUtil;
.super Ljava/lang/Object;
.source "UnCollectUtil.java"


# static fields
.field public static final RESULT_FAILED:I = 0x3

.field public static final RESULT_START:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UnCollectUtil"

.field private static unCollectResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectResultMap:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->getOtherPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->getTypeFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->checkCollect(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectResultMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->checkCollectResult(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static checkCollect(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_3

    .line 314
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCollect item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnCollectUtil"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private static checkCollectResult(Ljava/lang/String;)Z
    .locals 4

    .line 279
    sget-object v0, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectResultMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 281
    sget-object v2, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectResultMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "adult"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCollectResult childResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",adultResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnCollectUtil"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    .line 284
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method private static getOtherPattern()Ljava/lang/String;
    .locals 1

    .line 295
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adult"

    goto :goto_0

    :cond_0
    const-string v0, "child"

    :goto_0
    return-object v0
.end method

.method private static getTypeFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 327
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "."

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "apk"

    return-object p0

    :cond_1
    const-string p0, "applet"

    return-object p0
.end method

.method public static unCollectApplet(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectResultMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/alibaba/ailabs/base/util/UnCollectUtil$2;-><init>(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    invoke-static {v1, p1, v0, p2, v3}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->unCollectApplet2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v1, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectResultMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v1, Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/alibaba/ailabs/base/util/UnCollectUtil$3;-><init>(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    invoke-static {v1, p1, v0, p2, v3}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->unCollectApplet2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unCollectAppletAndUninstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unCollectAppletAndUninstall appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uninstalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",actionUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnCollectUtil"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v11, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;

    move-object v0, v11

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/base/util/UnCollectUtil$1;-><init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->getCurrentPattern()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v11, p0, p1, p2, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->unCollectApplet2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
