.class public Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;
.super Ljava/lang/Object;
.source "DestUrlBean.java"


# instance fields
.field private pkg:Ljava/lang/String;

.field private spmcnt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spm-cnt"
    .end annotation
.end field

.field private uri:Ljava/lang/String;


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
.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getSpmcnt()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->spmcnt:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setSpmcnt(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->spmcnt:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->uri:Ljava/lang/String;

    return-void
.end method
