.class Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor$MethodInfo;
.super Ljava/lang/Object;
.source "DinamicViewAdvancedConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodInfo"
.end annotation


# instance fields
.field attrSet:[Ljava/lang/String;

.field method:Ljava/lang/reflect/Method;

.field params:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor$MethodInfo;->method:Ljava/lang/reflect/Method;

    .line 416
    iput-object p2, p0, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor$MethodInfo;->attrSet:[Ljava/lang/String;

    .line 417
    iput-object p3, p0, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor$MethodInfo;->params:[Ljava/lang/Class;

    return-void
.end method
