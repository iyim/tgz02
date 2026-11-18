.class public Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;
.super Ljava/lang/Object;
.source "SendToCoinModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDetail"
.end annotation


# instance fields
.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skillInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSkillInfo()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;->skillInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;->permissions:Ljava/util/List;

    return-void
.end method

.method public setSkillInfo(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;->skillInfo:Ljava/lang/String;

    return-void
.end method
