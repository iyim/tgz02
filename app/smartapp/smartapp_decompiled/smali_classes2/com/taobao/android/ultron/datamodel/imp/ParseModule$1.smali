.class Lcom/taobao/android/ultron/datamodel/imp/ParseModule$1;
.super Ljava/util/ArrayList;
.source "ParseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseDelta(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/taobao/android/ultron/common/model/IDMComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

.field final synthetic val$insertComponent:Lcom/taobao/android/ultron/datamodel/imp/DMComponent;


# direct methods
.method constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/ParseModule;Lcom/taobao/android/ultron/datamodel/imp/DMComponent;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule$1;->this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule$1;->val$insertComponent:Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule$1;->val$insertComponent:Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
