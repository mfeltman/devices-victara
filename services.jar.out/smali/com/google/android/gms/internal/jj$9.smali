.class Lcom/google/android/gms/internal/jj$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jj;->b(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GU:Lcom/google/android/gms/internal/ji;

.field final synthetic GW:Lcom/google/android/gms/internal/jj;

.field final synthetic GX:Lcom/google/android/gms/internal/jf;

.field final synthetic He:Lcom/google/android/gms/internal/jf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jj$9;->GW:Lcom/google/android/gms/internal/jj;

    iput-object p2, p0, Lcom/google/android/gms/internal/jj$9;->GU:Lcom/google/android/gms/internal/ji;

    iput-object p3, p0, Lcom/google/android/gms/internal/jj$9;->GX:Lcom/google/android/gms/internal/jf;

    iput-object p4, p0, Lcom/google/android/gms/internal/jj$9;->He:Lcom/google/android/gms/internal/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jj$9;->GU:Lcom/google/android/gms/internal/ji;

    iget-object v1, p0, Lcom/google/android/gms/internal/jj$9;->GX:Lcom/google/android/gms/internal/jf;

    iget-object v2, p0, Lcom/google/android/gms/internal/jj$9;->He:Lcom/google/android/gms/internal/jf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ji;->a(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf;)V

    return-void
.end method
