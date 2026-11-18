.class Lcom/taobao/orange/ConfigCenter$1$1;
.super Ljava/util/HashSet;
.source "ConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/ConfigCenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/taobao/orange/aidl/ParcelableConfigListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/orange/ConfigCenter$1;


# direct methods
.method constructor <init>(Lcom/taobao/orange/ConfigCenter$1;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/taobao/orange/ConfigCenter$1$1;->this$1:Lcom/taobao/orange/ConfigCenter$1;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 143
    new-instance p1, Lcom/taobao/orange/ConfigCenter$1$1$1;

    invoke-direct {p1, p0}, Lcom/taobao/orange/ConfigCenter$1$1$1;-><init>(Lcom/taobao/orange/ConfigCenter$1$1;)V

    invoke-virtual {p0, p1}, Lcom/taobao/orange/ConfigCenter$1$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
