.class Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$1;
.super Landroid/util/Property;
.source "TBCircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$1;->this$0:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;)Ljava/lang/Float;
    .locals 0

    .line 143
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->getCurrentGlobalAngle()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$1;->get(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;Ljava/lang/Float;)V
    .locals 0

    .line 149
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->setCurrentGlobalAngle(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable$1;->set(Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;Ljava/lang/Float;)V

    return-void
.end method
