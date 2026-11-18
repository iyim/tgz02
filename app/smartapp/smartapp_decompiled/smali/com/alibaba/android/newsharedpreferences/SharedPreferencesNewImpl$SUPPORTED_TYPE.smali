.class Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$SUPPORTED_TYPE;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SUPPORTED_TYPE"
.end annotation


# static fields
.field static final TYPE_BOOLEAN:B = 0x4t

.field static final TYPE_FLOAT:B = 0x2t

.field static final TYPE_INT:B = 0x1t

.field static final TYPE_LONG:B = 0x3t

.field static final TYPE_STRING:B = 0x5t


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$SUPPORTED_TYPE;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
