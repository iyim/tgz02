.class public Lcom/alibaba/ailabs/searchbox/model/AppSearchKeyBean;
.super Ljava/lang/Object;
.source "AppSearchKeyBean.java"


# instance fields
.field protected utterance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getStsValue()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchKeyBean;->utterance:Ljava/lang/String;

    return-object v0
.end method

.method public setStsValue(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/model/AppSearchKeyBean;->utterance:Ljava/lang/String;

    return-void
.end method
