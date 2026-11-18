.class public final Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
.super Ljava/lang/Object;
.source "GeniePayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mAuthInfoStr:Ljava/lang/String;

.field private mExtend:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

.field private mOrderId:Ljava/lang/String;

.field private mParamModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

.field private mPayPrice:Ljava/lang/String;

.field private mTbUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mAuthInfoStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mAuthInfoStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mPayPrice:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mItemId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mAmount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Lcom/alibaba/ailabs/genie/pay/GeniePayListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mParamModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mExtend:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public amount(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mAmount:Ljava/lang/String;

    return-object p0
.end method

.method public authInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mAuthInfoStr:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;
    .locals 2

    .line 154
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$1;)V

    return-object v0
.end method

.method public extend(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mExtend:Ljava/lang/String;

    return-object p0
.end method

.method public itemId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mItemId:Ljava/lang/String;

    return-object p0
.end method

.method public listener(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    return-object p0
.end method

.method public orderId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mOrderId:Ljava/lang/String;

    return-object p0
.end method

.method public paramMode(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mParamModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    return-object p0
.end method

.method public payPrice(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mPayPrice:Ljava/lang/String;

    return-object p0
.end method

.method public tbUserId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->mTbUserId:Ljava/lang/String;

    return-object p0
.end method
