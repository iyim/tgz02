.class public Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfoListResult;
.super Ljava/lang/Object;
.source "SubscribeInfoListResult.java"


# instance fields
.field private subscribedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private unSubscribeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
