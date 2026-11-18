.class Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;
.super Ljava/lang/Object;
.source "BMHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/rmbsdk/export/BMHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BMChannelInfo"
.end annotation


# instance fields
.field channels:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/uc/rmbsdk/export/BMHandler;

.field userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/BMHandler;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;->this$0:Lcom/uc/rmbsdk/export/BMHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;->channels:Ljava/util/HashSet;

    .line 38
    iput-object p2, p0, Lcom/uc/rmbsdk/export/BMHandler$BMChannelInfo;->userId:Ljava/lang/String;

    return-void
.end method
