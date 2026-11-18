.class public Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;
.super Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;
.source "DXBindingXSpec.java"


# instance fields
.field public eventType:Ljava/lang/String;

.field public exitExpression:Lcom/alibaba/fastjson/JSONObject;

.field public name:Ljava/lang/String;

.field public propsJsonArray:Lcom/alibaba/fastjson/JSONArray;

.field public repeat:Z

.field public resetOnFinish:Z

.field public resetOnStop:Z

.field public specOriginMap:Lcom/alibaba/fastjson/JSONObject;

.field public token:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public updateFlattenOnlyOnFinish:Z

.field public updateFlattenOnlyOnStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnFinish:Z

    .line 35
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnStop:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnStop:Z

    .line 40
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnFinish:Z

    return-void
.end method
