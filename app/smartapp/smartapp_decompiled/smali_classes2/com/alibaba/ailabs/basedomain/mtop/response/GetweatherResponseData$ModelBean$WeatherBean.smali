.class public Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;
.super Ljava/lang/Object;
.source "GetweatherResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherBean"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;->name:Ljava/lang/String;

    return-void
.end method
