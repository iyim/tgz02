.class public Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;
.super Ljava/lang/Object;
.source "BindingXSpec.java"


# instance fields
.field public anchor:Ljava/lang/String;

.field public eventType:Ljava/lang/String;

.field public exitExpression:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

.field public expressionProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;",
            ">;"
        }
    .end annotation
.end field

.field public options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
