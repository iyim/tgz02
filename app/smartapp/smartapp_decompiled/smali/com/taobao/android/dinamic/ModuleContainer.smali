.class public Lcom/taobao/android/dinamic/ModuleContainer;
.super Ljava/lang/Object;
.source "ModuleContainer.java"


# instance fields
.field public dTemplateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

.field public dViewGenerator:Lcom/taobao/android/dinamic/DViewGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static build(Ljava/lang/String;)Lcom/taobao/android/dinamic/ModuleContainer;
    .locals 2

    .line 20
    new-instance v0, Lcom/taobao/android/dinamic/ModuleContainer;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/ModuleContainer;-><init>()V

    .line 21
    new-instance v1, Lcom/taobao/android/dinamic/DViewGenerator;

    invoke-direct {v1, p0}, Lcom/taobao/android/dinamic/DViewGenerator;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/taobao/android/dinamic/ModuleContainer;->dViewGenerator:Lcom/taobao/android/dinamic/DViewGenerator;

    .line 22
    new-instance v1, Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    invoke-direct {v1, p0}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/taobao/android/dinamic/ModuleContainer;->dTemplateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    return-object v0
.end method
