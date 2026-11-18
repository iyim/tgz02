.class public Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/adv/repository/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/repository/AdRequest$UserInfo;->id:Ljava/lang/String;

    return-void
.end method
