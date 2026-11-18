.class public Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;
.super Ljava/lang/Object;
.source "MoudleApplicationInfo.java"


# instance fields
.field public mApplication:Ljava/lang/Class;

.field public mProcessList:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;->mApplication:Ljava/lang/Class;

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;->mProcessList:[Ljava/lang/String;

    return-void
.end method
